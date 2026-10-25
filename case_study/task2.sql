-- Using SQL, calculate the average cost for two people for each cuisine type and list the 3 most expensive cuisines to eat in Bangalore.

USE ZomatoDB;

SELECT * FROM zomato_bangalore_atomic_values;

SELECT name,average_cost FROM zomato_bangalore_atomic_values
ORDER BY average_cost DESC
LIMIT 3;
