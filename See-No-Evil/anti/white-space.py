import mysql.connector

bug_id = int(input() or '0')

cnx = mysql.connector.connect(user='scott', database='test')

cursor = cnx.cursor()

query = '''SELECT * FROM Bugs'''

parameters = tuple()

if bug_id > 0:
    query = query + '''WHERE bug_id = %s'''
    parameters = parameters + (bug_id,)

cursor.execute(query, parameters)

for row in cursor:
    print(row)
