# E-commerce Database Management System

The E-commerce Database Management System is an open-source project designed to help learners understand how to effectively manage and structure databases in the context of an eCommerce platform. The system simulates the process of managing products, customers, orders, payments, and inventory in a real-world online store. Learners will gain hands-on experience with database design, including creating tables, defining relationships, and applying normalization principles.

## Objective

This challenge is designed to help learners understand and implement database design principles, including:

- **Structuring tables for efficient data management**: Understanding how to organize data in a way that minimizes redundancy and optimizes performance.
  
- **Implementing relationships between tables**: Creating relationships between entities like products, customers, and orders to ensure data integrity and consistency.

- **Normalizing data**: Applying normalization techniques to reduce data redundancy, improve integrity, and ensure scalable growth of the database.

- **Creating queries for user requests**: Developing queries that can handle common operations such as viewing products, adding items to a cart, processing orders, and managing customer information.

Through this project, learners will build foundational knowledge in database management, preparing them for more advanced topics in software development and database administration, while developing practical skills for building scalable, high-performing databases in eCommerce applications.

<br>

## E-commerce ERD diagram
<br>
<br>

![ERD Diagram](E-commerce-ERD.png)

<br>
<br>
<br>
<br>

# Creating Database Tables

This database schema models an <strong> e-commerce product catalog </strong>. 

Here's what each table does:

- `attribute_category` - Groups attribute types, eg., "Technical Specs", "Material".

- `attribute_type` - Specific attribute names like "Battery Life" or "Fabric Type", linked to a category.

- `size_category` - Groups of sizes (e.g., Clothing Sizes, Shoe Sizes).

- `size_option` -	Specific size options like "Small", "Medium", "9.5 US". Linked to size categories.

- `product_category` - Groups products into broad categories like "Shoes", "Electronics".

- `brand` - Stores brand names.

- `color` - Stores colors like "Red", "Blue", "Black".

- `product` - Main table for products with links to brand and category.

- `product_image` - Images associated with products, with a flag for the thumbnail.

- `product_item` - Represents a specific stock unit (size + color) for the product.

- `product_variation` - Describes product variations ("Limited Edition", "Summer Collection").

- `product_attribute` - Dynamic attributes/features assigned to a product, like "Material: Cotton", "Wireless: Yes".

<br>
<br>
<br>


## Best Practices I Used

- <strong>Foreign Keys everywhere</strong> → maintain relational integrity.

- <strong>Indexes</strong> (implicit through primary keys and foreign keys).
