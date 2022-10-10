1, a,SELECT AVG(standard_cost) AS Átlag  FROM `products` 
b, SELECT AVG(standard_cost) AS Átlag  FROM `products` 
WHERE list_price < 30;
c, SELECT AVG(standard_cost) AS Átlag  FROM `products` 
WHERE category ='Sauces'

2, a, SELECT SUM(standard_cost) AS Átlag  FROM `products` 
b, SELECT AVG(standard_cost) AS Átlag  FROM `products`  
WHERE list_price BEETWEN 20 AND 50;
c, SELECT AVG(standard_cost) AS Átlag  FROM `products` 
WHERE category NOT like 'Sauces';

3 a, SELECT COUNT(id) FROM `employees`
WHERE City = 'Seattle'
b, SELECT COUNT(id) FROM `employees` 
WHERE Job_title = 'Sales Representative';
c, SELECT COUNT(id) FROM `employees` 
WHERE first_name LIKE 'A%'