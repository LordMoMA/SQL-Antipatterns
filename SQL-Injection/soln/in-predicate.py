import mysql.connector

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

bug_list = [123, 234, 345, 456, 567, 678]
sql = "SELECT * FROM Bugs WHERE bug_id IN (%s, %s, %s, %s, %s, %s)"
cursor.execute(sql, bug_list)
print(cursor.fetchall())

bug_list = [123, 234, 345, 456, 567, 678]
placeholders = ",".join(["%s"] * len(bug_list))
sql = f"SELECT * FROM Bugs WHERE bug_id IN ({placeholders})"
cursor.execute(sql, bug_list)
print(cursor.fetchall())
