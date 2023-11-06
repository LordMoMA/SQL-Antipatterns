import mysql.connector

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

sql1 = "SELECT last_name FROM Accounts WHERE account_id = 123"
cursor.execute(sql1)

for row in cursor:
    # UNSAFE!
    sql2 = f"SELECT * FROM Bugs WHERE MATCH(description) AGAINST ('{row["last_name"]}')"
    cursor.execute(sql2)
    print(cursor.fetchall())
