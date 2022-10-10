1.feladat

A.
SELECT SupplierName, Country FROM Suppliers
WHERE Country = "UK" OR Country = "USA";
B.
SELECT SupplierName, Country FROM Suppliers
WHERE Country = "USA" AND (City ="Boston" OR City = "New Orleans")
C.
SELECT SupplierName, Country FROM Suppliers
WHERE NOT Country= "Japan" OR NOT Country = "Canada";

2.feladat

A.  
SELECT ProductName, Price FROM Products
ORDER BY Price;
B.
SELECT ProductName, Price FROM Products
ORDER BY Price DESC;
C.
SELECT ProductName, Unit FROM Products
ORDER BY ProductName ASC; Unit DESC;
