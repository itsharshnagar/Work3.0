-- Modify your previous query to show the top 5 most expensive products using ORDER BY with DESC and LIMIT.


USE foodie_app;

INSERT INTO products (id, product_name, category, price)
VALUES
(7, 'Smart Watch', 'Wearables', 2499.00),
(8, 'Bluetooth Speaker', 'Electronics', 1799.00),
(9, 'Webcam', 'Electronics', 2199.00),
(10, 'Mobile Cover', 'Accessories', 399.00),
(11, 'Laptop Backpack', 'Bags', 1299.00);

SELECT * FROM Products;

SELECT * FROM Products
ORDER BY price DESC
LIMIT 5;