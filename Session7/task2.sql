-- Write a SQL query to count how many orders were placed by each user in the Orders table, displaying user_name and the number of orders as order_count.

use foodie_app;

SELECT * FROM Orders;

SELECT user_name,COUNT(order_id) AS order_count
FROM Orders
GROUP BY user_name;
