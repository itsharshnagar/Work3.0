-- Write a SQL query on the FoodOrders table to select food_item as 'Dish' and order_date as 'Date Ordered', displaying only these two columns with the column aliases in the output.

USE foodie_app;

SELECT * FROM FoodOrders;

SELECT food_item AS Dish,
order_date AS `Date Ordered`
FROM FoodOrders;