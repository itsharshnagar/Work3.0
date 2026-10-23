-- Suppose you want to display the top 3 trending songs from a 'songs' table based on play_count, but if two songs have the same play_count, the more recently added song should come first. Write the SQL query to achieve this.<br><br><em><strong>Hint:</strong> Use ORDER BY with multiple columns.</em>

USE foodie_app;

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    play_count INT,
    added_date DATE
);

INSERT INTO songs (song_id, song_name, artist, play_count, added_date)
VALUES
(1, 'Blinding Lights', 'The Weeknd', 9500, '2025-01-10'),
(2, 'Shape of You', 'Ed Sheeran', 12000, '2025-02-15'),
(3, 'Stay', 'The Kid LAROI', 9500, '2025-04-20'),
(4, 'Perfect', 'Ed Sheeran', 8000, '2025-03-12'),
(5, 'Believer', 'Imagine Dragons', 12000, '2025-05-10'),
(6, 'Levitating', 'Dua Lipa', 7500, '2025-06-01'),
(7, 'Peaches', 'Justin Bieber', 6000, '2025-02-20');

SELECT * FROM songs;

SELECT *
FROM songs
ORDER BY play_count DESC, added_date DESC;
 