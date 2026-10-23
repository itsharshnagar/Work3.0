-- Write two different JOIN queries on a Products and Categories table (like Flipkart) to list all products with their category names, but use different join conditions in each. Briefly explain which join condition is more efficient and why.

USE Joins;

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Footwear');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY (category_id)
        REFERENCES Categories(category_id)
);

INSERT INTO Products VALUES
(101, 'Laptop', 55000.00, 1),
(102, 'T-Shirt', 599.00, 2),
(103, 'SQL Programming Book', 450.00, 3),
(104, 'Washing Machine', 22000.00, 4),
(105, 'Running Shoes', 2499.00, 5),
(106, 'Smartphone', 30000.00, 1),
(107, 'Jeans', 1299.00, 2),
(108, 'Headphones', 1999.00, 1);

SELECT * FROM Categories;
SELECT * FROM Products;

-- SELECT 
-- 	p.product_name,
--     c.category_name
-- FROM Products as p
-- RIGHT JOIN Categories as c
-- 	ON p.category_id = c.category_id;
    

SELECT 
	p.product_name,
    c.category_name
FROM Products as p
LEFT JOIN Categories as c
	ON p.category_id = c.category_id;
    
    
-- SELECT 
-- 	p.product_name,
--     c.category_name
-- FROM Categories as c
-- LEFT JOIN Products as p
-- 	ON p.category_id = c.category_id;
    
-- SELECT
-- 	c.category_name
-- FROM Categories as c
-- LEFT JOIN Products as p
-- 	ON p.category_id = c.category_id;
    
-- SELECT 
--     c.category_name
-- FROM Products as p
-- LEFT JOIN Categories as c
-- 	ON p.category_id = c.category_id;