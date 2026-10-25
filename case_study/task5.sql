-- Use ChatGPT or Copilot to help you write an SQL query that lists the top 10 most popular restaurant chains (by number of outlets) in the dataset, then run and validate the query yourself.<br><br><em><strong>Hint:</strong> Search for 'SQL group by count example' if you get stuck.</em>

USE ZomatoDB;

SELECT
    name AS restaurant_chain,
    COUNT(DISTINCT location) AS number_of_outlets
FROM zomato_bangalore_atomic_values
GROUP BY name
ORDER BY number_of_outlets DESC, restaurant_chain ASC
LIMIT 10;