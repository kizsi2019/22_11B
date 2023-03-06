import mysql.connector
mydb = mysql.connector.connect(
    host="localhost", user="root"
)
print(mydb)
mycursor = mydb.cursor()

mycursor.execute("USE muhely")
mycursor.execute('''SELECT vezeteknev, rajtszam, csapatnev, 2019-year(szuletesidatum)as eletkor FROM pilotak ORDER BY''')

for x in mycursor:
    print(x)