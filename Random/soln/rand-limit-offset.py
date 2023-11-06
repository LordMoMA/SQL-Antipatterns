import mysql.connector

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

cursor.execute("SELECT ROUND(RAND() * (SELECT COUNT(*) FROM Bugs))")
for row in cursor:
    offset = int(row[0])
cursor.execute("SELECT * FROM Bugs LIMIT 1 OFFSET %s", (offset,))
for bug in cursor:
    print(bug)

cnx.commit()
