1
a, SELECT SupplierName, Country FROM [Suppliers]
Where Country ="USA" OR "UK";
b, SELECT SupplierName, Country FROM [Suppliers]
Where Country ="USA" AND (City="Boston" OR City ="New Orleans");
c,SELECT SupplierName, Country FROM [Suppliers]
Where NOT Country="Japan" OR NOT Country="Canada";

2
a,SELECT ProductName, Price FROM [Products]
ORDER BY Price;
b,SELECT ProductName, Price FROM [Products]
ORDER BY Price DESC;
c,SELECT ProductName, Unit FROM [Products]
ORDER BY ProductName ASC, Unit DESC;