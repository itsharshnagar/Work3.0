-- Create a table named MusicPlaylist with columns: id, song_name, artist, genre, and duration. Insert at least 5 records representing songs from your favorite Spotify playlist, then write a SELECT statement to retrieve all columns for all songs.

USE foodie_app;

CREATE TABLE MusicPlaylist (
id INT PRIMARY KEY,
song_name VARCHAR(50),
artist VARCHAR(50),
genre VARCHAR(50),
duration INT
);

INSERT INTO MusicPlaylist (id, song_name, artist, genre, duration)
VALUES
(1, 'Excuses', 'AP Dhillon', 'Punjabi', 182),
(2, 'Blinding Lights', 'The Weeknd', 'Pop', 200),
(3, 'Perfect', 'Ed Sheeran', 'Pop', 263),
(4, 'Believer', 'Imagine Dragons', 'Rock', 204),
(5, 'Tum Hi Ho', 'Arijit Singh', 'Bollywood', 262);

SELECT * FROM MusicPlaylist;