1.
SELECT AVG(standard_cost) AS Átlag FROM `products`;
2.
SELECT AVG(standard_cost) AS átlag FROM `products` WHERE list_price < 30;
3.
SELECT AVG(standard_cost) AS átlag FROM `products` WHERE category = 'sauces';
4.
SELECT SUM(standard_cost) AS Átlag FROM `products`
5.
SELECT AVG(standard_cost) AS átlag FROM `products` WHERE list_price BETWEEN 20 AND 50
6.
SELECT AVG(standard_cost) AS átlag FROM `products` WHERE category NOT LIKE ='Sauces'
7.
SELECT COUNT(id) FROM `employes` WHERE city = 'Seattle';
8.
SELECT COUNT(id) FROM `employes` WHERE job_title = 'SALES Representativ';
9.
SELECT COUNT(id) FROM `employes` WHERE first_name LIKE 'A%'
10.
SELECT MAX(sandard_cost) FROM `products` WHERE list_price > 30;
11.
SELECT MAX(sandard_cost) FROM `products` WHERE products_code LIKE '%CO%'
 