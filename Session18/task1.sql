-- Write an SQL query to display the total number of songs uploaded by each artist from a table 'songs' (columns: song_id, artist_name, title) and show only those artists who have uploaded more than 3 songs.

CREATE DATABASE SQLPractice;
USE SQLPractice;

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    artist_name VARCHAR(100),
    title VARCHAR(150)
);

INSERT INTO songs (song_id, artist_name, title)
VALUES
(1, 'Arijit Singh', 'Tum Hi Ho'),
(2, 'Arijit Singh', 'Kesariya'),
(3, 'Arijit Singh', 'Channa Mereya'),
(4, 'Arijit Singh', 'Agar Tum Saath Ho'),
(5, 'Shreya Ghoshal', 'Teri Ore'),
(6, 'Shreya Ghoshal', 'Saibo'),
(7, 'Shreya Ghoshal', 'Param Sundari'),
(8, 'Armaan Malik', 'Bol Do Na Zara'),
(9, 'Armaan Malik', 'Main Rahoon Ya Na Rahoon'),
(10, 'Armaan Malik', 'Butta Bomma');

SELECT * FROM songs;

SELECT
    artist_name,
    COUNT(song_id) AS total_songs
FROM songs
GROUP BY artist_name
HAVING COUNT(song_id) > 3;