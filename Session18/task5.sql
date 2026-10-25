-- List two optimizations you would apply to speed up a query that filters Flipkart products by category and price, and briefly explain how each helps.<br><br><em><strong>Hint:</strong> Think about indexes and query structure.</em>

USE SQLPractice;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO Products
    (product_id, product_name, category, price, stock)
VALUES
(1, 'Samsung Galaxy Phone', 'Electronics', 18000.00, 25),
(2, 'Boat Earbuds', 'Electronics', 1500.00, 60),
(3, 'HP Wireless Mouse', 'Electronics', 800.00, 40),
(4, 'Nike Running Shoes', 'Footwear', 3500.00, 20),
(5, 'Adidas Sneakers', 'Footwear', 4500.00, 15),
(6, 'Levis Jeans', 'Clothing', 2500.00, 30),
(7, 'Cotton T-Shirt', 'Clothing', 700.00, 50),
(8, 'Smart Watch', 'Electronics', 4000.00, 35),
(9, 'Bluetooth Speaker', 'Electronics', 2800.00, 45),
(10, 'Leather Wallet', 'Accessories', 1200.00, 18);

SELECT product_name, price
FROM Products
WHERE category = 'Electronics'
  AND price BETWEEN 1000 AND 5000;