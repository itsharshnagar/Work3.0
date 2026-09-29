-- Write a SQL query to find all restaurants in the Restaurants table that have a rating greater than 4.0 and are located in either 'Ahmedabad' or 'Surat'.

USE foodie_app;

INSERT INTO Restaurant (id, name, cuisine, rating, city)
VALUES
(6, 'Agashiye', 'Gujarati', 4.5, 'Ahmedabad'),
(7, 'The Green House', 'North Indian', 4.2, 'Ahmedabad'),
(8, 'Spice Villa', 'Chinese', 3.9, 'Ahmedabad'),
(9, 'Leonardo Italian Mediterranean Dining', 'Italian', 4.3, 'Surat'),
(10, 'Spice Terrace', 'Indian', 4.1, 'Surat'),
(11, 'Food Junction', 'Fast Food', 3.8, 'Surat'),
(12, 'Mumbai Masala', 'North Indian', 4.6, 'Mumbai');

SELECT * FROM Restaurant;

SELECT name FROM Restaurant
WHERE  rating > 4.0 AND city IN ('Ahmedabad', 'Surat');

