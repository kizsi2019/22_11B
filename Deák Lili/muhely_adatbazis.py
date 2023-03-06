import mysql.connector
mydb = mysql.connector.connect(
    host="localhost"
    user="root"
    database="formula1"

)
print(mydb)
mycursore = mydb.cursore()

mycursore.execute("USE muhely")
mycursore.execute("SELECT * FROM szgk")

for x in mycursore:
    print(x)
