-- Write an SQL query to segment restaurants into three market segments based on average cost for two: budget (below 400), mid-range (400-800), and premium (above 800). Count how many restaurants fall into each segment.

USE ZomatoDB;

SELECT 
	CASE 
    WHEN average_cost < 400 THEN 'Budget'
    WHEN average_cost BETWEEN 400 AND 800 THEN 'Mid-range'
    WHEN average_cost > 800 THEN 'Premium'
    END AS segmants,
    COUNT(*) AS restaurant_count
FROM zomato_bangalore_atomic_values
GROUP BY segmants;