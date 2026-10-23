-- Write an SQL query to display all products from a 'products' table and sort them by price in ascending order, similar to how Flipkart lists items from lowest to highest price.

USE foodie_app;

CREATE TABLE Products (
id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);

INSERT INTO Products (id, product_name, category, price)
VALUES
(1, 'Wireless Mouse', 'Electronics', 699.00),
(2, 'Keyboard', 'Electronics', 1299.00),
(3, 'Headphones', 'Electronics', 1999.00),
(4, 'USB Cable', 'Accessories', 299.00),
(5, 'Laptop Stand', 'Accessories', 899.00),
(6, 'Power Bank', 'Electronics', 1499.00);

SELECT * FROM Products;

SELECT * FROM Products
ORDER BY price ASC;

