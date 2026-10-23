-- Given a 'movies' table with columns 'title', 'release_year', and 'rating', write an SQL query to list all movies sorted first by release_year in descending order (latest first), then by rating in descending order (highest rated first).

USE foodie_app;

CREATE TABLE movies (
id INT PRIMARY KEY,
title VARCHAR(100),
release_year INT,
rating DECIMAL(3,1)
);

INSERT INTO movies (id, title, release_year, rating)
VALUES
(1, 'Inception', 2010, 8.8),
(2, 'Interstellar', 2014, 8.7),
(3, 'Dune', 2021, 8.0),
(4, 'Oppenheimer', 2023, 8.6),
(5, 'Avatar 2', 2022, 7.6),
(6, 'The Batman', 2022, 7.8),
(7, 'Dune: Part Two', 2024, 8.5),
(8, 'Top Gun: Maverick', 2022, 8.2),
(9, 'Spider-Man: No Way Home', 2021, 8.2),
(10, 'Joker', 2019, 8.4);

SELECT title, release_year, rating
FROM movies
ORDER BY release_year DESC, rating DESC;

