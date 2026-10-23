-- Write a SQL query to calculate the average total_amount of all orders in the Orders table, making sure to ignore any NULL values.

use foodie_app;

SELECT * FROM Orders;

SELECT AVG(total_amount) AS Total_Amount
FROM Orders;


