import mysql.connector

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

cursor.execute("SELECT 1 + ROUND(RAND() * COUNT(*)) FROM Bugs")
for row in cursor:
    offset = row[0]

cursor.execute("""
    WITH NumberedBugs AS (
      SELECT *, ROW_NUMBER() OVER (ORDER BY bug_id) AS rownum FROM Bugs
    )
    SELECT * FROM NumberedBugs WHERE rownum = %s""", (offset,))
for bug in cursor:
    print(bug)

cnx.commit()
