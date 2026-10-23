-- Create a table called Orders with columns: order_id, user_name, total_amount, and order_date. Insert 5 sample rows with different users and order amounts, including at least one NULL value for total_amount.

use foodie_app;

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
user_name VARCHAR(50),
total_amount DECIMAL(10,2),
order_date DATE
);

INSERT INTO Orders
(order_id, user_name, total_amount, order_date)
VALUES
(101, 'Rahul', 1500.50, '2026-09-25'),
(102, 'Amit', 899.00, '2026-09-26'),
(103, 'Priya', 2450.75, '2026-09-27'),
(104, 'Sneha', 750.25, '2026-09-28'),
(105, 'Rohan', 3200.00, '2026-09-29');

UPDATE Orders
SET total_amount = NULL
WHERE order_id = 104;

SELECT * FROM Orders;










