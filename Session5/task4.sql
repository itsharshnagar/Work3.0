-- Write a SQL query using the BETWEEN keyword to find all restaurants in the Restaurants table with a rating between 3.5 and 4.5 (inclusive).

USE foodie_app;

SELECT * FROM Restaurant;

SELECT name 
FROM Restaurant
WHERE rating BETWEEN 3.5 and 4.0;