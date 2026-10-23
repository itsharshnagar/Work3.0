-- Suppose you are building a Flipkart-style dashboard: Write a SQL query to find the highest and lowest order amounts (MAX and MIN) from the Orders table, and display both values in a single result row.

use foodie_app;

SELECT * FROM Orders;

SELECT MIN(total_amount) AS Min_Order_Amount,
MAX(total_amount) AS Max_Order_Amount
FROM Orders;