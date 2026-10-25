-- Using the same Orders table, write a SQL query with the LEAD() function to display each order_id, order_date, and the next order's total_amount for the same user.

USE OrderPractice;

SELECT
    order_id,
    user_id,
    order_date,
    total_amount,
    LEAD(total_amount) OVER (
        PARTITION BY user_id
        ORDER BY order_date
    ) AS next_order_amount
FROM Orders
ORDER BY user_id, order_date;