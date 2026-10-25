-- Write SQL statements to create a table called TopSongs with columns: song_id, song_title, artist, streams, and release_date, then insert at least 5 records representing popular tracks from Spotify.

USE FoodDeliveryDB;

CREATE TABLE TopSongs (
    song_id INT PRIMARY KEY,
    song_title VARCHAR(150),
    artist VARCHAR(100),
    streams BIGINT,
    release_date DATE
);

INSERT INTO TopSongs
    (song_id, song_title, artist, streams, release_date)
VALUES
    (1, 'Blinding Lights', 'The Weeknd', 4500000000, '2019-11-29'),
    (2, 'Shape of You', 'Ed Sheeran', 4000000000, '2017-01-06'),
    (3, 'As It Was', 'Harry Styles', 3000000000, '2022-04-01'),
    (4, 'Starboy', 'The Weeknd', 3500000000, '2016-09-22'),
    (5, 'Perfect', 'Ed Sheeran', 2800000000, '2017-03-03');
    
    SELECT * FROM TopSongs;