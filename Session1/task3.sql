-- Insert three sample rows into the 'playlists' table representing playlists like 'Bollywood Hits', 'Chill Vibes', and 'Workout Mix', each created by a different user.

USE music_streaming_app;

INSERT INTO playlists (playlist_id, name, created_by)
VALUES
(1,"Bollywood Hits","Harsh"),
(2,"Chill Vibes","Shakil"),
(3,"Workout Mix","Fuzail");

SELECT * FROM playlists;