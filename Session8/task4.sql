-- Write an SQL query to show only those payment methods where the average order amount is greater than 300, using GROUP BY and HAVING.<br><br><em><strong>Hint:</strong> Use AVG(amount) in your HAVING clause.</em>

USE foodie_app;

SELECT payment_method, AVG(amount) as average_amount
FROM serve
GROUP BY payment_method
HAVING average_amount > 300;