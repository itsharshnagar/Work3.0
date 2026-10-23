-- Write an SQL query to count how many orders were placed using each payment_method in the Orders table, similar to how Zomato shows payment breakdown in analytics.

use foodie_app;

SELECT payment_method, count(order_id) as placed_orders
FROM serve
GROUP BY payment_method;
