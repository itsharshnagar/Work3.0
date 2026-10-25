-- Write a nested SQL query to find the names of all sellers from a 'Sellers' table on a Flipkart-style platform who have sold products in every category listed in a 'Categories' table.<br><br><em><strong>Hint:</strong> Use nested subqueries to compare seller's categories with the complete list of categories.</em>

USE restaurantpractice;

CREATE TABLE Sellers (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(100)
);

INSERT INTO Sellers VALUES
(1, 'Tech World'),
(2, 'Fashion Hub'),
(3, 'Mega Mart'),
(4, 'Smart Deals'),
(5, 'Daily Needs');

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Footwear');

CREATE TABLE SellerProducts (
    sale_id INT PRIMARY KEY,
    seller_id INT,
    category_id INT,
    product_name VARCHAR(100),
    FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO SellerProducts VALUES
(1, 1, 1, 'Laptop'),
(2, 1, 2, 'T-Shirt'),
(3, 1, 3, 'Mixer'),
(4, 1, 4, 'Sneakers'),

(5, 2, 2, 'Jeans'),
(6, 2, 4, 'Sports Shoes'),

(7, 3, 1, 'Smartphone'),
(8, 3, 2, 'Jacket'),
(9, 3, 3, 'Cookware'),
(10, 3, 4, 'Sandals'),

(11, 4, 1, 'Headphones'),
(12, 4, 3, 'Dining Set'),
(13, 4, 4, 'Running Shoes'),

(14, 5, 2, 'Shirt'),
(15, 5, 3, 'Storage Box');

SELECT seller_name
FROM Sellers
WHERE seller_id IN (
    SELECT seller_id
    FROM SellerProducts
    GROUP BY seller_id
    HAVING COUNT(DISTINCT category_id) = (
        SELECT COUNT(*)
        FROM Categories
    )
);