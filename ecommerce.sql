-- Attribute category table
CREATE TABLE attribute_category (
    attribute_category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

-- Attribute type table
CREATE TABLE attribute_type (
    attrbute_type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(150) NOT NULL,
    attribute_category_id INT NOT NULL,
);

-- Size category table
CREATE TABLE size_category (
    size_category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(150) NOT NULL
);

-- size option table
CREATE TABLE size_option (
    size_id INT PRIMARY KEY AUTO_INCREMENT,
    size_name VARCHAR(150) NOT NULL,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- product category table
CREATE TABLE product_category (
    product_category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(150) NOT NULL
);

-- brand table
CREATE TABLE brand (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(150) NOT NULL,
    brand_description TEXT,
);

-- color table
CREATE TABLE color ( 
    color_id INT PRIMARY KEY AUTO_INCREMENT,
    color_name VARCHAR(150) NOT NULL,
    color_code VARCHAR(150) NOT NULL
);

-- product table
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id)
    FOREIGN KEY (product_category_id) REFERENCES product_category(product_category_id),
);

-- product image table
CREATE TABLE product_image (
    image_id INT PRIMARY KEY AUTO_INCREMENT,
    image_url VARCHAR(500) NOT NULL,
    alt_text VARCHAR(200) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Product item table (single purchasable unit)
CREATE TABLE product_item (
    product_item_id INT PRIMARY KEY AUTO_INCREMENT,
    stock_quantity INT DEFAULT 0,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

-- Product variation table
CREATE TABLE product_variation (
    variation_id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- Product attribute table (special features like "waterproof", "wireless")
CREATE TABLE product_attribute (
    attribute_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    value INT NOT NULL,
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attrbute_type_id)
);