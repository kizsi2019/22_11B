import mysql.connector
mydb = mysql.connector.connect(
    host = 'localhost', user = 'root'
)
print(mydb)
mycursor = mydb.cursor()

mycursor.execute(' USE formula110b' )
mycursor.execute(''' SELECT vezeteknev, rajtszam, csapatnev, 2019-year(szuletesidatum) as eletkor FROM pilotak ORDER BY eletkor DESC''' )

for x in mycursor:
    print(x)