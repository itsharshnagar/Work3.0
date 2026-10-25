-- Write a SQL query to generate a report showing the number of restaurants for each cuisine type from your Restaurant table, ordered by the count in descending order.<br><br><em><strong>Hint:</strong> Use GROUP BY and ORDER BY.</em>

USE RestaurantPractice;

SELECT
    cuisine,
    COUNT(*) AS restaurant_count
FROM Restaurant
GROUP BY cuisine
ORDER BY restaurant_count DESC;