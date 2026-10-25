-- Write a SQL query using the LAG() function to show each user's order_id, order_date, and the total_amount of their previous order (if any), ordered by user and date.<br><br><em><strong>Hint:</strong> Use PARTITION BY user_id and ORDER BY order_date in your window function.</em>

USE OrderPractice;

SELECT
    order_id,
    user_id,
    order_date,
    total_amount,
    LAG(total_amount) OVER (
        PARTITION BY user_id
        ORDER BY order_date
    ) AS previous_order_amount
FROM Orders
ORDER BY user_id, order_date;