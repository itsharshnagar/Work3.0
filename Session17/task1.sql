-- Create a SQL table called Restaurant with columns: id, name, cuisine, location, and average_rating. Insert at least 5 sample rows representing popular restaurants from Zomato.

CREATE DATABASE RestaurantPractice;
USE RestaurantPractice;

CREATE TABLE Restaurant (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    location VARCHAR(100),
    average_rating DECIMAL(2,1)
);

INSERT INTO Restaurant
    (id, name, cuisine, location, average_rating)
VALUES
    (1, 'Spice Garden', 'Indian', 'Ahmedabad', 4.3),
    (2, 'Pizza Paradise', 'Italian', 'Ahmedabad', 4.5),
    (3, 'Tandoori Nights', 'Indian', 'Surat', 4.6),
    (4, 'Pasta House', 'Italian', 'Vadodara', 4.2),
    (5, 'Dragon Wok', 'Chinese', 'Ahmedabad', 4.1),
    (6, 'Sushi World', 'Japanese', 'Surat', 4.7),
    (7, 'Royal Thali', 'Indian', 'Vadodara', 4.4),
    (8, 'Noodle Express', 'Chinese', 'Ahmedabad', 4.0);
    
SELECT * FROM Restaurant;