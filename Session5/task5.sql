-- Write a query to find all restaurants whose cuisine is either 'Chinese', 'Italian', or 'South Indian' using the IN operator.

USE foodie_app;

SELECT name
FROM Restaurant
WHERE cuisine in ('Chinese', 'Italian', 'South Indian');