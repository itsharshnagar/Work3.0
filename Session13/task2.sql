-- Write a SQL query using ROW_NUMBER() and the OVER() clause to assign a unique row number to each playlist, ordered by total_likes in descending order.

USE PlaylistPractice;

SELECT * FROM Playlists;

SELECT
    playlist_name,
    user_id,
    total_likes,
    ROW_NUMBER() OVER (
        ORDER BY total_likes DESC, id
    ) AS row_num
FROM Playlists;