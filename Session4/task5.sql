-- You tried running this query: SELECT DISTINCT food_item, restaurant FROM FoodOrders LIMIT 2, but it returns an error or doesn't work as expected. Identify and fix the mistake in the query.<br><br><em><strong>Hint:</strong> Check the correct placement and usage of the LIMIT keyword in SQL syntax.</em>

USE foodie_app;

SELECT * FROM FoodOrders;

SELECT DISTINCT food_item, restaurant
FROM FoodOrders
LIMIT 2;