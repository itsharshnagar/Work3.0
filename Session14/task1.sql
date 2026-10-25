-- Create a table called Orders with columns: order_id, user_id, order_date, and total_amount. Insert at least 7 sample rows representing different users and dates, similar to how food orders appear in Zomato or Swiggy.

CREATE DATABASE OrderPractice;
USE OrderPractice;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO Orders
    (order_id, user_id, order_date, total_amount)
VALUES
    (101, 1, '2026-10-01', 250.00),
    (102, 2, '2026-10-01', 180.00),
    (103, 1, '2026-10-03', 320.00),
    (104, 3, '2026-10-04', 450.00),
    (105, 2, '2026-10-05', 220.00),
    (106, 1, '2026-10-06', 150.00),
    (107, 3, '2026-10-07', 300.00),
    (108, 2, '2026-10-08', 400.00),
    (109, 1, '2026-10-09', 500.00),
    (110, 3, '2026-10-10', 200.00);
    
SELECT * FROM Orders;