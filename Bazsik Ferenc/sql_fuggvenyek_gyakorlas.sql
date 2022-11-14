SQL FÜGGVÉNYEK
1.feladat
A.
SELECT AVG(standard_cost) AS átlag FROM products
B.
SELECT AVG(standard_cost) AS átlag FROM products WHERE list_price <30;
C.
SELECT AVG(standard_cost) AS átlag FROM products WHERE category like 'Sauces'

2.feladat
A.
SELECT SUM(standard_cost) AS átlag FROM products
B.
SELECT AVG(standard_cost) AS átlag FROM products WHERE list_price BEETWEN 20 AND 50;
C.
SELECT AVG(standard_cost) AS átlag FROM products WHERE category NOT LIKE 'Sauces';

3.feladat
A.
SELECT COUNT(id) FROM employees WHERE City ='Seattle'
B.
SELECT COUNT(id) FROM employees WHERE Job_title='Sales Representative'
C.
SELECT COUNT(id) FROM employees WHERE first_name LIKE 'A%'

4.feladat
A.
SELECT MIN(standard_cost) FROM products
B.
SELECT MAX(standard_cost) FROM products
C.
SELECT MAX(standard_cost from products
D.
SELECT MAX(standard_cost) from products WHERE
