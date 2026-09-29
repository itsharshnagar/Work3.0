-- Using the LIKE operator, write a query to select all restaurants whose names start with 'Swa' (for example, 'Swagat', 'Swadisht') from the Restaurants table.<br><br><em><strong>Hint:</strong> Use LIKE 'Swa%'.</em>

USE foodie_app;

SELECT * FROM Restaurant;

INSERT INTO Restaurant (id, name, cuisine, rating, city)
VALUES
(13, 'Swagat', 'North Indian', 4.2, 'Ahmedabad'),
(14, 'Swadisht', 'Gujarati', 4.4, 'Surat'),
(15, 'Swami Restaurant', 'South Indian', 4.0, 'Ahmedabad'),
(16, 'Swaad Corner', 'Indian', 4.1, 'Surat'),
(17, 'Food Palace', 'Chinese', 3.8, 'Mumbai');

SELECT * FROM Restaurant;

SELECT name 
FROM Restaurant
WHERE name LIKE 'Swa%';