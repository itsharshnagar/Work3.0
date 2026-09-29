-- Create a table called Restaurants with columns: id, name, cuisine, rating, and city. Insert at least 5 sample records representing real or fictional restaurants you might find on Zomato.

USE foodie_app;

CREATE TABLE Restaurant (
id INT PRIMARY KEY,
name VARCHAR(50),
cuisine VARCHAR(50),
rating DECIMAL(2,1),
city VARCHAR(50)
);

SELECT * FROM Restaurant;

INSERT INTO Restaurant (id, name, cuisine, rating, city)
VALUES
(1, 'Meghana Foods', 'Biryani, South Indian', 4.2, 'Bengaluru'),
(2, 'Raj Restaurant', 'North Indian, Chinese', 4.0, 'Gurgaon'),
(3, 'Chicago Pizza', 'Pizza, Fast Food', 3.9, 'Noida'),
(4, 'Karim''s', 'Mughlai, North Indian', 4.5, 'Delhi'),
(5, 'Bademiya', 'Mughlai, Kebab', 4.4, 'Mumbai');


SELECT * FROM Restaurant;