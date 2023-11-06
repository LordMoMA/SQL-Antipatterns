import mysql.connector

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

bugid = 1234
query = f"SELECT * FROM Bugs WHERE bug_id = {bugid}";
cursor.execute(query)

print(cursor.fetchall())
