1,
a, SELECT AVG(standard_cost) AS Átlag FROM `products'
b, SELECT AVG(standard_cost) AS Átlag FROM
`products` WHERE list_price < 30;
c,SELECT AVG(standard_cost) AS Átlag FROM `products` WHERE category ='Sauces';
2,
a,SELECT SUM(standard_cost) AS Átlag FROM `products'
b,SELECT SUM(standard_cost) AS Átlag FROM
`products` WHERE list_price BETWEEN 20 AND 50;
c,SELECT AVG(standard_cost) AS Átlag FROM `products` 
WHERE category NOT LIKE 'Sauces';
3,
a,SELECT COUNT(id) FROM `employees` WHERE City = 'Seattle';
b,SELECT COUNT(id) FROM `employees` WHERE job_title = 'Sales Representative';
c,SELECT COUNT(id) FROM `employees` WHERE first_name LIKE 'A%'
4,
a,SELECT MIN(standard_cost) FROM `products`
b,SELECT MAX(standard_cost) FROM `products`
c,SELECT MAX(standard_cost) FROM `products` WHERE list_price > 30;
d,SELECT MAX(standard_cost) FROM `products` WHERE product_code LIKE '%CO%'

