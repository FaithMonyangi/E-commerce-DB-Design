-- Attribute category table
CREATE TABLE attribute_category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- Attribute type table
CREATE TABLE attribute_type (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    attribute_category_id INT NOT NULL,
    FOREIGN KEy (attribute_category_id) REFERENCES attribute_category(id)
);

-- Size category table
CREATE TABLE size_category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL
);

-- size option table
CREATE TABLE size_option (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VAECHAR(150) NOT NULL,
    size_category_id INT NOT NULL,
    FOREIGN KEY (size_category_id) REFERENCES size_category(id)
);

-- product category table
CREATE TABLE product_category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL
);

-- brand table
CREATE TABLE brand (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL
);

-- color table
CREATE TABLE color (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL
);

-- product table
CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    brand_id INT NOT NULL,
    product_category_id INT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand(id),
    FOREIGN KEY (product_category_id) REFERENCES product_category(id)
);

-- product image table
CREATE TABLE product_image (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    image_url VARCHAR(500) NOT NULL,
    is_thumbnail BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Product item table (single purchasable unit)
CREATE TABLE product_item (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    sku VARCHAR(100) NOT NULL UNIQUE,
    color_id INT NOT NULL,
    size_option_id INT NOT NULL,
    stock_quantity INT DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (color_id) REFERENCES color(id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(id)
);

-- Product variation table
CREATE TABLE product_variation (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    variation_name VARCHAR(150),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Product attribute table (special features like "waterproof", "wireless")
CREATE TABLE product_attribute (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    attribute_type_id INT NOT NULL,
    value VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(id)
);