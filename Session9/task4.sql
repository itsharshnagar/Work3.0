-- Write an SQL RIGHT JOIN query to display all dishes and their restaurant names, including any dishes that might not be linked to a restaurant (simulate a data error where a dish has a restaurant_id that doesn't match any restaurant).

USE Joins;

SELECT 
	d.dish_name,
    r.name
FROM dishes as d
RIGHT JOIN restaurants as r
	ON d.dish_name = r.name;