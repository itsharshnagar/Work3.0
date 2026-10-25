-- Add a new table called Review with columns: id, restaurant_id, user_name, rating, and review_date. Insert at least 10 sample reviews, linking them to restaurants using restaurant_id.

USE RestaurantPractice;

CREATE TABLE Review (
    id INT PRIMARY KEY,
    restaurant_id INT,
    user_name VARCHAR(100),
    rating DECIMAL(2,1),
    review_date DATE,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);

INSERT INTO Review
    (id, restaurant_id, user_name, rating, review_date)
VALUES
    (101, 1, 'Rahul', 4.5, '2026-10-01'),
    (102, 1, 'Priya', 4.0, '2026-10-02'),
    (103, 2, 'Amit', 4.8, '2026-10-03'),
    (104, 2, 'Neha', 4.6, '2026-10-04'),
    (105, 3, 'Karan', 4.7, '2026-10-05'),
    (106, 3, 'Sneha', 4.3, '2026-10-06'),
    (107, 4, 'Riya', 4.1, '2026-10-07'),
    (108, 5, 'Arjun', 4.2, '2026-10-08'),
    (109, 5, 'Meera', 3.8, '2026-10-09'),
    (110, 6, 'Dev', 4.9, '2026-10-10'),
    (111, 7, 'Ananya', 4.4, '2026-10-11'),
    (112, 8, 'Vikram', 4.0, '2026-10-12');
    
SELECT * FROM Review;