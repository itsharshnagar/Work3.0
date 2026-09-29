-- Write an SQL statement that would update the song_name for all songs by 'AP Dhillon' in your Playlist to add '(Remix)' at the end of the name, but only if the duration is more than 180 seconds.<br><br><em><strong>Constraint:</strong> Combine UPDATE with WHERE to target only the correct rows.</em>

USE foodie_app;

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(6, 'Excuses', 'AP Dhillon', 182),
(7, 'Insane', 'AP Dhillon', 178),
(8, 'Summer High', 'AP Dhillon', 190);

SELECT * FROM Playlist;

SELECT * FROM Playlist
WHERE artist = "AP Dhillon" AND duration > 180;

UPDATE Playlist
SET song_name = CONCAT(song_name , "(Remix)")
WHERE artist = "AP Dhillon" AND duration > 180;

SELECT * FROM Playlist;