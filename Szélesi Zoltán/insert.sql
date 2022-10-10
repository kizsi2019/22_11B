1.
a,INSERT INTO Categories (CategoryName, Description)
VALUES ("Drinks", "Teas, Beers, Coffies");
b,INSERT INTO Categories (CategoryName)
VALUES ("Foods")
c,SELECT * FROM [Categories] 
WHERE Description IS NULL;