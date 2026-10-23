-- Write an SQL query to display the first 10 restaurants from a 'restaurants' table, sorted alphabetically by name, just like Zomato's A-Z listing.<br><br><em><strong>Hint:</strong> Use ORDER BY with LIMIT.</em>

use foodie_app;

SELECT * FROM restaurant;

SELECT *
FROM restaurant
ORDER BY name ASC
LIMIT 10;