SELECT state_province FROM customers UNION SELECT `ship_state_province`FROM orders;


SELECT COUNT(id) AS termekek_szama, category FROM `products` GROUP BY category;

SELECT COUNT(id) ship_city FROM orders GROUP BY ship_city;