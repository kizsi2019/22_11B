1, 
a, SELECT AVG standard_cost AS Atlag FROM products
b, SELECT AVG (standard_cost) AS Atlag FROM 'products' WHERE list_price  30
c, SELECT AVG (standard_cost) AS Atlag FROM 'products' WHERE category = 'Sauces'

2,
a, SELECT SUM(standard_cost) AS Átlag FROM 'products'
b, SELECT SUM(standard_cost) AS Átlag FROM 'products' BETWEEN '20-50'
c, SELECT SUM(standard_cost) AS Átlag FROM 'products' WHERE NOT LIKE 'category'

3,
a, SELECT COUNT(city) FROM employee WHERE City = 'Seattle';
b, SELECT COUNT(title) FROM employee WHERE title = 'Sales representative';
c, SELECT COUNT(firstname) FROM employee WHERE firstname = 'A%';

4,
a, SELECT MIN(UnitPrice) AS Legolcsóbb FROM product;
b, SELECT MAX(UnitPrice) AS Legolcsóbb FROM product;
c, 
d, 