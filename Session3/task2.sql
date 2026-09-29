-- Insert 3 new rows into the Playlist table for songs you recently listened to on Spotify, including their song_name, artist, and duration.

USE foodie_app;

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(2, 'Shape of You', 'Ed Sheeran', 234),
(3, 'Starboy', 'The Weeknd', 230),
(4, 'Believer', 'Imagine Dragons', 204);

SELECT * FROM Playlist;