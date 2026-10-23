-- Create two tables: Influencers (id, name) and Collaborations (id, influencer1_id, influencer2_id, collab_date). Write a SQL FULL JOIN query to list all influencers and show their collaboration partner names if any, including influencers with no collaborations.

USE Joins;

CREATE TABLE Influencers (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO Influencers (id, name)
VALUES
(1, 'Rahul'),
(2, 'Priya'),
(3, 'Amit'),
(4, 'Sneha'),
(5, 'Neha');

CREATE TABLE Collaborations (
    id INT PRIMARY KEY,
    influencer1_id INT,
    influencer2_id INT,
    collab_date DATE,

    FOREIGN KEY (influencer1_id) REFERENCES Influencers(id),
    FOREIGN KEY (influencer2_id) REFERENCES Influencers(id)
);

INSERT INTO Collaborations (id, influencer1_id, influencer2_id, collab_date)
VALUES
(101, 1, 2, '2026-01-10'),
(102, 2, 3, '2026-01-15'),
(103, 1, 4, '2026-02-01'),
(104, 3, 5, '2026-02-10'),
(105, 2, 4, '2026-02-20');

SELECT * FROM Influencers;
SELECT * FROM Collaborations;

-- SELECT 
-- 	i.name as influencers,
--     c.influencer1_id as collaboration_partner
-- FROM influencers as i
-- LEFT JOIN collaborations as c
-- 	ON i.id = influencer1_id
-- LEFT JOIN influencers as i
-- 	ON i.id = influencer2_id

-- UNION 

-- SELECT 
-- 	i.name as influencers,
--     c.influencer2_id as collaboration_partner
-- FROM influencers as i
-- JOIN collaborations as c
-- 	ON i.id = influencer2_id
-- LEFT JOIN influencers as i
-- 	ON i.id = influencer1_id;

SELECT
    i.name AS influencer_name,
    partner.name AS collaboration_partner
FROM Influencers AS i
LEFT JOIN Collaborations AS c
    ON i.id = c.influencer1_id
LEFT JOIN Influencers AS partner
    ON c.influencer2_id = partner.id

UNION

SELECT
    i.name AS influencer_name,
    partner.name AS collaboration_partner
FROM Influencers AS i
LEFT JOIN Collaborations AS c
    ON i.id = c.influencer2_id
JOIN Influencers AS partner
    ON c.influencer1_id = partner.id;
    

