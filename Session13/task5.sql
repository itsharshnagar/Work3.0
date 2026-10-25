-- Imagine you want to show the top 2 playlists per user based on total_likes, like Spotify's 'Your Top Playlists' feature. Write a query using a window function to select only the top 2 playlists for each user.

USE PlaylistPractice;

WITH RankedPlaylists AS (
    SELECT
        playlist_name,
        user_id,
        total_likes,
        ROW_NUMBER() OVER (
            PARTITION BY user_id
            ORDER BY total_likes DESC, id
        ) AS row_num
    FROM Playlists
)
SELECT
    playlist_name,
    user_id,
    total_likes,
    row_num
FROM RankedPlaylists
WHERE row_num <= 2
ORDER BY user_id, row_num;
