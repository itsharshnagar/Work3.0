-- Write a SQL subquery to find the names of all restaurants from a 'restaurants' table (id, name, rating) whose rating is higher than the average rating of all restaurants.

USE SQLPractice;

CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    rating DECIMAL(2,1)
);

INSERT INTO restaurants (id, name, rating)
VALUES
(1, 'Spice Garden', 4.2),
(2, 'Pizza Paradise', 4.7),
(3, 'Dragon Wok', 3.8),
(4, 'Royal Thali', 4.5),
(5, 'Burger House', 3.9),
(6, 'Sushi World', 4.9),
(7, 'Tandoori Nights', 4.3),
(8, 'Pasta House', 4.1);


SELECT * FROM restaurants;

SELECT name, rating
FROM restaurants
WHERE rating > (
    SELECT AVG(rating)
    FROM restaurants
);