-- Design and create a 'users' table for a Flipkart-style app with columns: user_id (primary key), username, email, phone_number, and created_at (date/time). Pick appropriate data types for each column.<br><br><em><strong>Hint:</strong> Think about which columns should be unique and which data types best fit email and phone numbers.</em>

USE foodie_app;

CREATE TABLE users (
user_id INT PRIMARY KEY,
username VARCHAR(100) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
phone_number VARCHAR(20) UNIQUE,
created_at DATETIME
);

SHOW TABLES;