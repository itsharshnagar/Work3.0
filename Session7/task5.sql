-- Write a SQL query to calculate the total sales (SUM of total_amount) for all orders, but only include orders where total_amount is not NULL.<br><br><em><strong>Hint:</strong> Use a WHERE clause to filter out NULL values before applying the SUM function.</em>

use foodie_app;

SELECT * FROM Orders;

SELECT SUM(total_amount) AS Total_Sum
FROM Orders
WHERE total_amount IS NOT NULL;