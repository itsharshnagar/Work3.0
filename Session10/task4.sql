-- You notice that your JOIN query between Zomato's Restaurants and Reviews tables is returning duplicate rows for some restaurants. Modify your query to eliminate duplicates and explain in one line why the duplicates were happening.<br><br><em><strong>Hint:</strong> Use DISTINCT or GROUP BY and consider the relationship between restaurants and reviews.</em>

USE Joins;

CREATE TABLE Restaurant (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    cuisine VARCHAR(50)
);

INSERT INTO Restaurant VALUES
(1, 'Spice Garden', 'Ahmedabad', 'Indian'),
(2, 'Pizza House', 'Mumbai', 'Italian'),
(3, 'Sushi World', 'Pune', 'Japanese'),
(4, 'Burger Hub', 'Delhi', 'Fast Food'),
(5, 'Curry Corner', 'Ahmedabad', 'Indian');

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    restaurant_id INT,
    customer_name VARCHAR(100),
    rating DECIMAL(2,1),
    FOREIGN KEY (restaurant_id)
        REFERENCES Restaurant(restaurant_id)
);

INSERT INTO Reviews VALUES
(101, 1, 'Amit', 4.5),
(102, 1, 'Priya', 4.0),
(103, 1, 'Rahul', 3.5),
(104, 2, 'Neha', 4.2),
(105, 2, 'Karan', 3.8),
(106, 3, 'Riya', 4.7),
(107, 4, 'Vikas', 3.9),
(108, 4, 'Anjali', 4.1),
(109, 5, 'Meera', 4.4);

SELECT * FROM Restaurant;
SELECT * FROM Reviews;

SELECT DISTINCT
	r.restaurant_name
FROM restaurant as r
LEFT JOIN reviews as rev
	ON r.restaurant_id = rev.restaurant_id;
-- GROUP BY r.restaurant_name

-- The duplicates happen because one restaurant can have multiple reviews, so the LEFT JOIN returns one row per review.