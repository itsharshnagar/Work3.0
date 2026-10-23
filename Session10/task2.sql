-- Using a SELF JOIN, write a query on a table called Playlists (id, user_id, playlist_name, parent_playlist_id) to display each playlist alongside its parent playlist name, similar to how Spotify shows nested playlists.<br><br><em><strong>Hint:</strong> Join Playlists with itself on parent_playlist_id = id.</em>

USE Joins;

CREATE TABLE Playlist (
    id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    parent_playlist_id INT,
    FOREIGN KEY (parent_playlist_id) REFERENCES Playlist(id)
);

INSERT INTO Playlist (id, user_id, playlist_name, parent_playlist_id)
VALUES
    (1, 101, 'Rock', NULL),
    (2, 101, 'Classic Rock', 1),
    (3, 102, 'Pop', NULL),
    (4, 101, 'Hard Rock', 1),
    (5, 102, 'K-Pop', 3);
    
SELECT * FROM Playlist;
    
SELECT 
	p1.playlist_name,
	p2.playlist_name as parent_playlist_name
FROM playlist as p1
LEFT JOIN playlist as p2
	ON p1.id = p2.parent_playlist_id;