-- Using a 'transactions' table (id, user_id, amount, transaction_date), write a SQL query with a window function to display each user's transaction amount and their running total (cumulative sum) ordered by transaction_date.

USE SQLPractice;

CREATE TABLE transactions (
    id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    transaction_date DATE
);

INSERT INTO transactions
    (id, user_id, amount, transaction_date)
VALUES
(1, 101, 100.00, '2026-10-01'),
(2, 102, 250.00, '2026-10-01'),
(3, 101, 200.00, '2026-10-03'),
(4, 103, 500.00, '2026-10-03'),
(5, 102, 150.00, '2026-10-04'),
(6, 101,  50.00, '2026-10-05'),
(7, 103, 300.00, '2026-10-06'),
(8, 102, 400.00, '2026-10-07'),
(9, 101, 350.00, '2026-10-08'),
(10, 103, 100.00, '2026-10-09');


SELECT
    id,
    user_id,
    transaction_date,
    amount,
    SUM(amount) OVER (
        PARTITION BY user_id
        ORDER BY transaction_date, id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM transactions
ORDER BY user_id, transaction_date, id;