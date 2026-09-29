-- Delete a song from the Playlist table where the duration is less than 120 seconds using the DELETE statement and a WHERE clause.<br><br><em><strong>Hint:</strong> Make sure your WHERE clause is specific so you don’t accidentally delete all rows.</em>

USE foodie_app;

INSERT INTO Playlist (id, song_name, artist, duration)
VALUES
(6, 'Perfect', 'Ed Sheeran', 90);

SELECT * FROM Playlist;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Playlist
WHERE duration < 120;

SELECT * FROM Playlist;