-- Using two CTEs in a single query, find the top 3 most-followed users and the top 3 most-liked posts from a 'Users' and 'Posts' table (think Instagram-style data). Output both lists in the same result set.

USE CTE_Practice;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100),
    followers INT,
    following INT
);

INSERT INTO Users
VALUES
(1, 'harsh_nagar', 2500, 400),
(2, 'rahul_dev', 1800, 350),
(3, 'priya_sharma', 5200, 600),
(4, 'amit_verma', 900, 250),
(5, 'neha_patel', 4100, 700),
(6, 'rohan_mehta', 1200, 300),
(7, 'sneha_jain', 6500, 800),
(8, 'arjun_singh', 3000, 500);

CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    caption VARCHAR(200),
    likes INT,
    comments INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Posts
VALUES
(101, 1, 'My first post', 450, 50),
(102, 2, 'Travel diaries', 1200, 180),
(103, 3, 'New beginnings', 3200, 400),
(104, 4, 'Food photography', 800, 90),
(105, 5, 'Weekend vibes', 2500, 300),
(106, 6, 'Coding life', 650, 70),
(107, 7, 'Summer vacation', 4100, 500),
(108, 8, 'Fitness journey', 1800, 220);

WITH most_followed_users AS (
SELECT username,followers
FROM Users
ORDER BY followers DESC
LIMIT 3 
),

most_liked_posts AS (
SELECT caption,likes
FROM Posts
ORDER BY likes DESC
LIMIT 3)

SELECT * FROM most_followed_users

UNION ALL

SELECT * FROM most_liked_posts;