-- Given a 'Movies' table and a 'Reviews' table, write a SQL query using IN with a subquery to list all movies that have at least one review with a rating of 5 stars, as seen in BookMyShow's top-rated section.

USE restaurantpractice;

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    genre VARCHAR(50),
    release_year INT
);

INSERT INTO Movies (movie_id, movie_name, genre, release_year)
VALUES
(1, 'Inception', 'Sci-Fi', 2010),
(2, 'Interstellar', 'Sci-Fi', 2014),
(3, 'The Dark Knight', 'Action', 2008),
(4, '3 Idiots', 'Comedy', 2009),
(5, 'Dangal', 'Drama', 2016),
(6, 'Avatar', 'Fantasy', 2009);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    reviewer_name VARCHAR(100),
    rating INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

INSERT INTO Reviews (review_id, movie_id, reviewer_name, rating)
VALUES
(101, 1, 'Rahul', 5),
(102, 1, 'Priya', 4),
(103, 2, 'Amit', 5),
(104, 3, 'Neha', 4),
(105, 4, 'Karan', 5),
(106, 5, 'Sneha', 3),
(107, 6, 'Arjun', 4),
(108, 3, 'Riya', 5),
(109, 2, 'Dev', 4),
(110, 6, 'Meera', 5);

SELECT * FROM Movies;
SELECT * FROM Reviews;

SELECT movie_id, movie_name, genre, release_year
FROM Movies
WHERE movie_id IN (
    SELECT movie_id
    FROM Reviews
    WHERE rating = 5
);