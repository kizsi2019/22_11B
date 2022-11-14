SELECT AVG(standard_cost) AS átlag FROM `products`;

SELECT AVG(standard_cost) AS átlag FROM `products` WHERE list_price < 30 ;

SELECT AVG(standard_cost) AS átlag FROM `products` WHERE category ="Sauces"





SELECT AVG(standard_cost) AS átlag FROM `products`;

SELECT AVG(standard_cost) AS átlag FROM `products` WHERE list_price BETWEEN 20 AND 50;

SELECT AVG(standard_cost) AS átlag FROM `products` WHERE NOT category ="Sauces"




SELECT COUNT(id) FROM `employees` WHERE CITY ="Seattle"

SELECT COUNT(id) FROM `employees` WHERE Job_title= "Sales Representative"

SELECT COUNT(id) FROM `employees` WHERE first_name LIKE 'A%'




SELECT MIN(standard_cost) FROM products;

SELECT MAX(standard_cost) FROM products;

SELECT MAX(standard_cost) FROM products WHERE list_price < 30;
SELECT MAX(standard_cost) FROM products WHERE product_code "LIKE'CO'"











