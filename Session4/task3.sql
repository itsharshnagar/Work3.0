-- Suppose you have a table named FoodOrders with columns: id, restaurant, food_item, and order_date. Write a SQL query to list all unique restaurant names where you have placed orders, using the DISTINCT keyword.

USE foodie_app;

CREATE TABLE FoodOrders (
id INT PRIMARY KEY,
restaurant VARCHAR(50),
food_item VARCHAR(50),
order_date DATE
);

INSERT INTO FoodOrders (id, restaurant, food_item, order_date)
VALUES
(1, 'Dominos', 'Pizza', '2026-09-01'),
(2, 'McDonalds', 'Burger', '2026-09-02'),
(3, 'Dominos', 'Pasta', '2026-09-05'),
(4, 'Subway', 'Sandwich', '2026-09-06'),
(5, 'McDonalds', 'Fries', '2026-09-08');

SELECT * FROM FoodOrders;

SELECT DISTINCT restaurant
FROM FoodOrders;


