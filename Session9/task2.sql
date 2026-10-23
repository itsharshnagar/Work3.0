-- Write an SQL INNER JOIN query to display each dish along with its restaurant name and city, similar to how Zomato shows dish details with the restaurant info.

USE Joins;

SELECT 
	d.dish_name,
    r.name,
    r.city
FROM restaurants AS r
INNER JOIN dishes AS d
	ON r.id = d.restaurant_id;