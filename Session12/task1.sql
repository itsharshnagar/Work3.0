-- Create a CTE using the WITH clause to select all products with a rating above 4.5 from a 'Products' table, similar to how Flipkart or Myntra might highlight top-rated items.

CREATE DATABASE CTE_Practice;
USE CTE_Practice;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    rating DECIMAL(2,1)
);

INSERT INTO Products
VALUES
(1, 'Nike Shoes', 'Footwear', 2999.00, 4.7),
(2, 'Samsung Phone', 'Electronics', 18999.00, 4.4),
(3, 'Levis Jacket', 'Clothing', 2499.00, 4.8),
(4, 'Boat Earbuds', 'Electronics', 1499.00, 4.2),
(5, 'Puma T-Shirt', 'Clothing', 999.00, 4.6),
(6, 'Adidas Sneakers', 'Footwear', 3999.00, 4.9),
(7, 'HP Mouse', 'Accessories', 799.00, 4.3),
(8, 'Fastrack Watch', 'Accessories', 1999.00, 4.5);

WITH products AS (
	SELECT product_name 
    FROM Products
    WHERE rating > 4.5)
    
SELECT * FROM products;