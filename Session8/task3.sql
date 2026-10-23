-- Write an SQL query to find the total amount spent by each user_id in the Orders table. Display user_id and their total spend.

use foodie_app;

SELECT user_id, sum(amount) as total_spent
FROM serve
GROUP BY user_id;