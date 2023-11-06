import mysql.connector

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

query = "SELECT * FROM Bugs WHERE bug_id = %s"
cursor.execute(query, (1234,))
for (row) in cursor:
    print(row[10])
