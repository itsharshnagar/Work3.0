-- Find all restaurants that offer online delivery but have a rating below 3.0, and suggest a marketing strategy to improve their ratings based on your findings.<br><br><em><strong>Hint:</strong> Look for patterns in location, cuisine, or price that might explain the low ratings.</em>

USE ZomatoDB;

ALTER TABLE zomato_bangalore_atomic_values
ADD COLUMN online_delivery VARCHAR(3);

SET SQL_SAFE_UPDATES = 0;

UPDATE zomato_bangalore_atomic_values
SET online_delivery = 'Yes',
    rate = CASE
        WHEN name = 'Chaat & Curry' THEN 2.8
        WHEN name = 'Urban Tandoor' THEN 2.7
        WHEN name = 'Royal Mughlai' THEN 2.9
    END
WHERE name IN ('Chaat & Curry', 'Urban Tandoor', 'Royal Mughlai');

SELECT * FROM zomato_bangalore_atomic_values;
SELECT name,online_delivery,rate FROM zomato_bangalore_atomic_values
WHERE rate < 3;

-- Restaurants offering online delivery with ratings below 3.0 should prioritize food consistency, packaging, delivery reliability, and value for money. Targeted promotions can help attract customers, but improving the actual customer experience is the most sustainable way to increase ratings.