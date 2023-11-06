import mysql.connector
import random

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

cursor.execute("SELECT bug_id FROM Bugs")
bug_ids = cursor.fetchall()
rand_bug_id = random.choice(bug_ids)[0]

cursor.execute("SELECT * FROM Bugs WHERE bug_id = %s", (rand_bug_id,))
for bug in cursor:
    print(bug)

cnx.commit()
