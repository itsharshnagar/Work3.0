-- Explain the difference between WHERE and HAVING by giving one example query for each, using the Orders table. Your examples should show a scenario where WHERE and HAVING filter different things.

-- WHERE filters individual rows before grouping.

SELECT * FROM serve
WHERE amount > 700;

-- HAVING filters groups after aggregation using GROUP BY.

SELECT payment_method, AVG(amount) as average_amount
FROM serve
GROUP BY payment_method
HAVING average_amount > 300;