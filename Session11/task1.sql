-- Create a SQL query using a subquery in the WHERE clause to find all restaurants from a 'Restaurants' table whose average rating is higher than the average rating of all restaurants in the city.

USE restaurantpractice;

CREATE TABLE Restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    rating DECIMAL(2,1)
);

INSERT INTO Restaurants (id, name, city, rating)
VALUES
(1, 'Spice Garden', 'Pune', 4.2),
(2, 'Pizza House', 'Pune', 4.8),
(3, 'Food Corner', 'Pune', 3.5),
(4, 'Royal Thali', 'Mumbai', 4.0),
(5, 'Burger Point', 'Mumbai', 4.6),
(6, 'Tasty Bites', 'Mumbai', 3.9),
(7, 'Dragon Wok', 'Ahmedabad', 4.7),
(8, 'Gujarati Rasoi', 'Ahmedabad', 4.1),
(9, 'Urban Cafe', 'Ahmedabad', 3.8),
(10, 'South Spice', 'Pune', 4.1);

SELECT * FROM restaurants;

SELECT
    r.name,
    r.city,
    r.rating
FROM Restaurants r
WHERE r.rating > (
    SELECT AVG(r2.rating)
    FROM Restaurants r2
    WHERE r2.city = r.city
);