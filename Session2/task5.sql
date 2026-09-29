-- Intentionally make a mistake in your CREATE TABLE statement (such as missing a comma or using an unsupported data type), run it, and then fix the error based on the message you receive.<br><br><em><strong>Hint:</strong> Take a screenshot of the error and the corrected SQL statement for your records.</em>

USE foodie_app;

-- CREATE TABLE test_error (
--     id INT PRIMARY KEY,
--     name VARCHAR(100)
--     email VARCHAR(100)
-- );

-- result : 
-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'email VARCHAR(100) )' at line 4


CREATE TABLE test_error (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- result :
-- 3 row(s) returned


