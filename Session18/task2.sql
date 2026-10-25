-- Given two tables, 'orders' (order_id, user_id, amount) and 'users' (user_id, username), write a SQL JOIN query to display each username along with their total order amount.

USE SQLPractice;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100)
);

INSERT INTO users (user_id, username)
VALUES
(1, 'Rahul'),
(2, 'Priya'),
(3, 'Amit'),
(4, 'Neha'),
(5, 'Karan');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO orders (order_id, user_id, amount)
VALUES
(101, 1, 450.00),
(102, 2, 700.00),
(103, 1, 300.00),
(104, 3, 250.00),
(105, 2, 550.00),
(106, 4, 400.00),
(107, 3, 350.00),
(108, 1, 200.00),
(109, 5, 600.00),
(110, 4, 150.00);

SELECT * FROM users;
SELECT * FROM orders;

SELECT
    u.username,
    SUM(o.amount) AS total_order_amount
FROM users u
JOIN orders o
    ON u.user_id = o.user_id
GROUP BY u.user_id, u.username
ORDER BY total_order_amount DESC;