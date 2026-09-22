-- Inside the 'music_streaming_app' database, create a table called 'playlists' with columns: playlist_id (integer, primary key), name (varchar), and created_by (varchar).

USE music_streaming_app;

CREATE TABLE playlists (
playlist_id INT PRIMARY KEY,
name VARCHAR(200),
created_by VARCHAR(200)
);

SELECT * FROM playlists;