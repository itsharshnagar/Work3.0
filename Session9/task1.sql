-- Create two tables in your database: 'restaurants' (id, name, city) and 'dishes' (id, restaurant_id, dish_name, price). Insert at least 3 restaurants and 2-3 dishes for each restaurant.

CREATE DATABASE Joins;
USE Joins;

CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO restaurants (id, name, city)
VALUES
(1, 'Spice Garden', 'Pune'),
(2, 'Food Junction', 'Mumbai'),
(3, 'Green Leaf', 'Ahmedabad');

SELECT * FROM restaurants;

CREATE TABLE dishes (
    id INT PRIMARY KEY,
    restaurant_id INT,
    dish_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);

INSERT INTO dishes (id, restaurant_id, dish_name, price)
VALUES
(101, 1, 'Paneer Tikka', 250.00),
(102, 1, 'Veg Biryani', 180.00),
(103, 1, 'Dal Makhani', 200.00),
(104, 2, 'Masala Dosa', 120.00),
(105, 2, 'Pav Bhaji', 150.00),
(106, 2, 'Veg Fried Rice', 190.00),
(107, 3, 'Gujarati Thali', 220.00),
(108, 3, 'Handvo', 100.00),
(109, 3, 'Sev Tameta', 160.00);

SELECT * FROM dishes;

INSERT INTO restaurants (id, name, city)
VALUES
(4, 'Royal Bites', 'Jaipur');

SELECT * FROM restaurants;