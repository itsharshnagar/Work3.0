-- Update the artist name for one of your Playlist entries to fix a typo (for example, change 'Arjit Singh' to 'Arijit Singh') using the UPDATE statement with a WHERE clause.

USE foodie_app;

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(5, 'Tum Hi Ho', 'Arjit Singh', 262);

SELECT * FROM Playlist;

UPDATE Playlist
SET artist = "Arijit Singh"
WHERE id = 5;

SELECT * FROM Playlist;