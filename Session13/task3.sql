-- Use the RANK() function with the OVER() clause to rank all playlists by total_likes, and display the playlist_name, user_id, total_likes, and their rank.

USE PlaylistPractice;

SELECT
    playlist_name,
    user_id,
    total_likes,
    RANK() OVER (
        ORDER BY total_likes DESC
    ) AS playlist_rank
FROM Playlists;