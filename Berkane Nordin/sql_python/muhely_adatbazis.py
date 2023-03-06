import mysql.connector
mydb = mysql.connector.connect (
    host = "localhost", user="root",
    database ="formula1"

)
print(mydb)
mycursor = mydb.cursor()

mycursor.execute("USE formula1")
mycursor.execute('''SELECT pilotak.vezeteknev,pilotak.rajtszam,pilotak.csapatnev,2019-year(pilotak.szuletesidatum)
AS eletkor
FROM pilotak
ORDER BY eletkor DESC''')

for x in mycursor:
    print(x)