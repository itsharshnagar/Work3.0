-- Write an SQL query to find the top 5 highest-rated restaurants in Koramangala that serve North Indian cuisine, using the Zomato Bangalore dataset.

CREATE DATABASE ZomatoDB;
USE ZomatoDB;

SELECT * FROM zomato_bangalore_atomic_values;

SELECT name,rate
FROM zomato_bangalore_atomic_values
WHERE 
	location LIKE '%Koramangala%'
	AND cuisines LIKE '%North Indian%'

order by rate DESC
LIMIT 5;
