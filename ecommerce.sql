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