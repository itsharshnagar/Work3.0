-- Write an SQL LEFT JOIN query to list all restaurants and their dishes, showing restaurants even if they currently have no dishes on the menu.<br><br><em><strong>Hint:</strong> Use LEFT JOIN so restaurants without dishes still appear in the results with NULL for dish columns.</em>

USE Joins;
    
SELECT 
	r.name,
	d.dish_name
FROM restaurants as r
LEFT JOIN dishes as d
	ON r.id = d.restaurant_id;
        