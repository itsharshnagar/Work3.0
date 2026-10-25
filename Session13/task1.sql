-- Create a table named Playlists with columns: id, user_id, playlist_name, and total_likes. Insert at least 8 sample rows with different users and playlists, making sure some playlists have the same user_id.

CREATE DATABASE PlaylistPractice;
USE PlaylistPractice;

CREATE TABLE Playlists (
    id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    total_likes INT
);

INSERT INTO Playlists
    (id, user_id, playlist_name, total_likes)
VALUES
    (1, 101, 'Bollywood Hits', 500),
    (2, 101, 'Workout Mix', 300),
    (3, 101, 'Chill Vibes', 300),
    (4, 102, 'Party Anthems', 700),
    (5, 102, 'Romantic Songs', 450),
    (6, 102, 'Old Classics', 200),
    (7, 103, 'Lo-Fi Beats', 500),
    (8, 103, 'Study Focus', 400),
    (9, 103, 'Night Drive', 400),
    (10, 104, 'Rock Legends', 600),
    (11, 104, 'Acoustic Cafe', 350),
    (12, 104, 'Morning Energy', 150);
    
