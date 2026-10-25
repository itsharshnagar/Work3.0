-- Rewrite a query that finds all restaurants in 'Ahmedabad' with delivery charges under 50 from a 'Restaurants' table, first using a subquery and then using a CTE. Compare both queries for readability.<br><br><em><strong>Hint:</strong> Focus on making the CTE version cleaner and easier to understand.</em>

USE CTE_Practice;

CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(50),
    cuisine VARCHAR(50),
    delivery_charge DECIMAL(6,2)
);

INSERT INTO Restaurants
VALUES
(1, 'Spice Garden', 'Ahmedabad', 'Indian', 30.00),
(2, 'Pizza Corner', 'Ahmedabad', 'Italian', 60.00),
(3, 'Food Junction', 'Ahmedabad', 'Chinese', 40.00),
(4, 'Burger House', 'Surat', 'Fast Food', 25.00),
(5, 'Royal Thali', 'Ahmedabad', 'Gujarati', 45.00),
(6, 'Tasty Bites', 'Vadodara', 'Indian', 35.00),
(7, 'Urban Cafe', 'Ahmedabad', 'Cafe', 50.00),
(8, 'South Spice', 'Ahmedabad', 'South Indian', 20.00);

SELECT restaurant_name 
FROM Restaurants
WHERE delivery_charge IN (
SELECT delivery_charge 
FROM Restaurants
WHERE city = 'Ahmedabad' AND delivery_charge < 50);

WITH restaurants AS (
SELECT restaurant_name
FROM Restaurants
WHERE city = 'Ahmedabad' AND delivery_charge < 50)
SELECT * FROM restaurants;