-- Create a table called Playlist with columns: id (INT, primary key), song_name (VARCHAR), artist (VARCHAR), and duration (INT, seconds). Insert a single row for your current favorite song.

USE foodie_app;

CREATE TABLE Playlist (
id INT PRIMARY KEY,
song_name VARCHAR(50),
artist VARCHAR(50),
duration INT
);

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(1,'Blinding Lights', 'The Weeknd', 200);

SELECT * FROM Playlist;