1. Feladat
a, SELECT SupplierName FROM [Suppliers] WHERE Country = "USA" OR "UK";
b, SELECT SupplierName FROM [Suppliers] WHERE City = "Boston" OR "New Orleans";
c, SELECT SupplierName FROM [Suppliers] WHERE NOT Country = "Japan" OR NOT  "Canada";

2. feladat
a, SELECT * FROM [Products]ORDER BY Price ASC;
b,SELECT * FROM [Products] ORDER BY Price DESC;
c,SELECT ProductName, Unit FROM [Products] ORDER BY ProductName ASC, Unit DESC;
