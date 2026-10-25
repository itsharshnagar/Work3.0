-- Write a SQL query using a JOIN to display each restaurant's name, cuisine, and its average review rating (from the Review table), ordered by highest average rating first.<br><br><em><strong>Hint:</strong> Use JOIN and GROUP BY with aggregate functions.</em>

USE RestaurantPractice;

SELECT
    r.name AS restaurant_name,
    r.cuisine,
    ROUND(AVG(rv.rating), 2) AS avg_review_rating
FROM Restaurant r
JOIN Review rv
    ON r.id = rv.restaurant_id
GROUP BY r.id, r.name, r.cuisine
ORDER BY avg_review_rating DESC;