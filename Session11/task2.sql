-- Write a SQL query that uses a subquery in the SELECT statement to display each user's name from a 'Users' table along with the total number of orders they have placed from an 'Orders' table, like a summary you might see in a Zomato user profile.

USE subquery;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Users (user_id, user_name, email, city)
VALUES
(1, 'Harsh Nagar', 'harsh@gmail.com', 'Pune'),
(2, 'Rahul Sharma', 'rahul@gmail.com', 'Mumbai'),
(3, 'Priya Patel', 'priya@gmail.com', 'Ahmedabad'),
(4, 'Amit Verma', 'amit@gmail.com', 'Jaipur'),
(5, 'Sneha Shah', 'sneha@gmail.com', 'Pune');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    restaurant_name VARCHAR(100),
    order_amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Orders
(order_id, user_id, restaurant_name, order_amount, order_date)
VALUES
(101, 1, 'Dominos Pizza', 450.00, '2026-10-01'),
(102, 1, 'Burger King', 250.00, '2026-10-03'),
(103, 1, 'McDonalds', 320.00, '2026-10-05'),
(104, 2, 'Pizza Hut', 500.00, '2026-10-02'),
(105, 2, 'Subway', 280.00, '2026-10-06'),
(106, 3, 'La Pinoz Pizza', 400.00, '2026-10-04'),
(107, 4, 'KFC', 350.00, '2026-10-07'),
(108, 4, 'Dominos Pizza', 600.00, '2026-10-08'),
(109, 4, 'Burger King', 200.00, '2026-10-09');

SELECT * FROM Users;
SELECT * FROM Orders;


SELECT 
	o.order_amount,
    u.user_id
FROM Orders as o
LEFT JOIN Users as u
	ON o.user_id = u.user_id;