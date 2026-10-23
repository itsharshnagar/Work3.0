-- Create a table called Orders with columns: order_id, user_id, payment_method, and amount. Insert at least 8 sample records representing different users and payment methods (like UPI, Card, Wallet, COD).

use foodie_app;

CREATE TABLE serve(
order_id INT PRIMARY KEY,
user_id INT,
payment_method VARCHAR(50),
amount DECIMAL(10,2)
);

INSERT INTO serve(order_id, user_id,payment_method, amount)
VALUES
(101, 1, 'UPI', 499.00),
(102, 2, 'Card', 1299.50),
(103, 3, 'Wallet', 250.00),
(104, 1, 'COD', 799.00),
(105, 4, 'UPI', 1500.00),
(106, 5, 'Card', 899.99),
(107, 2, 'Wallet', 349.00),
(108, 6, 'COD', 650.00),
(109, 3, 'UPI', 2200.00),
(110, 7, 'Card', 1750.00);

SELECT * FROM serve;
