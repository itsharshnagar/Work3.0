-- Use a window function to rank restaurants by their average review rating within each cuisine type, showing the restaurant name, cuisine, average rating, and rank.<br><br><em><strong>Hint:</strong> Use the RANK() or DENSE_RANK() window function partitioned by cuisine.</em>

USE RestaurantPractice;

WITH RestaurantRatings AS (
    SELECT
        r.id,
        r.name AS restaurant_name,
        r.cuisine,
        AVG(rv.rating) AS avg_review_rating
    FROM Restaurant r
    JOIN Review rv
        ON r.id = rv.restaurant_id
    GROUP BY r.id, r.name, r.cuisine
)
SELECT
    restaurant_name,
    cuisine,
    ROUND(avg_review_rating, 2) AS avg_review_rating,
    RANK() OVER (
        PARTITION BY cuisine
        ORDER BY avg_review_rating DESC
    ) AS cuisine_rank
FROM RestaurantRatings
ORDER BY cuisine, cuisine_rank;