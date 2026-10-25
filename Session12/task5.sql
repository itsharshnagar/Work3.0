-- Given a messy SQL query that finds all users with more than 1000 followers from a 'Users' table, refactor it to use a CTE for better clarity and maintainability.

USE CTE_Practice;

WITH users_with_followers AS (
SELECT username,followers
FROM Users
WHERE followers > 1000
ORDER BY followers ASC
)
SELECT * FROM users_with_followers;
