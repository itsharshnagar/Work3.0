-- Given three tables: Users (id, username), Orders (id, user_id, order_date), and Payments (id, order_id, amount), write a SQL query using multiple JOINs to display each username, their order date, and payment amount, showing all users even if they have no orders or payments.

USE Joins;

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    user_id INT,
    order_date DATE
);

INSERT INTO Orders (id, user_id, order_date)
VALUES
    (101, 1, '2026-01-10'),
    (102, 1, '2026-01-15'),
    (103, 2, '2026-02-05'),
    (104, 4, '2026-02-20'),
    (105, 5, '2026-03-01');
    
    
CREATE TABLE Payments (
    id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10, 2)
);

INSERT INTO Payments (id, order_id, amount)
VALUES
    (201, 101, 150.00),
    (202, 102, 250.50),
    (203, 104, 500.00),
    (204, 105, 120.75);
    

ALTER TABLE Users
ADD COLUMN order_id INT;

ALTER TABLE Users
ADD CONSTRAINT fk_users_orders
FOREIGN KEY (order_id)
REFERENCES Orders(id);

SET SQL_SAFE_UPDATES = 0;

UPDATE Users
SET order_id = CASE
    WHEN user_id = 1 THEN 101
    WHEN user_id = 2 THEN 103
    WHEN user_id = 3 THEN NULL
    WHEN user_id = 4 THEN 104
    WHEN user_id = 5 THEN 105
END;
    
SELECT * FROM users;
SELECT * FROM payments;
SELECT * FROM orders;

SELECT
	u.user_name,
    o.order_date,
    p.amount as payment_amount
FROM users as u
LEFT JOIN orders as o
	ON u.user_id = o.user_id
LEFT JOIN payments as p
	ON u.order_id = p.order_id;
    
	