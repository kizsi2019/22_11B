1.feladat
a, SELECT * FROM Categories
b, SELECT CategoryName FROM Categories
c, SELECT CategoryName, Description FROM Categories

2.feladat
a, SELECT ProductName, Unit, Price FROM Products
b, SELECT ProductName, Price FROM Products WHERE Price < 20
c, SELECT ProductName, Price FROM Products WHERE Price BETWEEN 20 AND 30
d, SELECT ProductName, Price FROM Products WHERE Price <> 10
e, SELECT * FROM Products WHERE ProductName LIKE 'T%'
f, SELECT * FROM Products WHERE ProductName LIKE 'Louisiana%'

3.feladat 
SELECT DISTINCT Country FROM  Suppliers