-- Write an SQL SELECT query to display all playlists created by the user 'Harsh' from the 'playlists' table.<br><br><em><strong>Hint:</strong> Use the WHERE clause to filter by the 'created_by' column.</em>

USE music_streaming_app;

SELECT * FROM playlists
WHERE created_by = "Harsh";