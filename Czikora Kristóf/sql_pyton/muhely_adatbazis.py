import mysql.connector
mydb = mysql.connector.connect(
    host="localhost", user="root",
)
print(mydb)
mycursor = mydb.cursor()
mycursor.execute("USE formula1")
mycursor.execute("SELECT * FROM pilotak")
for x in mycursor:
    print(x)