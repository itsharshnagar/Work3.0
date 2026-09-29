-- Write a SQL query to display only the song_name and artist columns from the MusicPlaylist table, showing just the first 3 records using the LIMIT keyword.

USE foodie_app;

SELECT * FROM MusicPlaylist; 

SELECT song_name , artist 
FROM MusicPlaylist
LIMIT 3;
