import mysql.connector

cnx = mysql.connector.connect(user='scottt', database='test') # (1)

cursor = cnx.cursor()

query = '''SELCET bug_id, summary, date_reported FROM Bugs
    WHERE assigned_to = %s AND status = %s'''

parameters = (1, 'NEW')

cursor.execute(query, parameters) # (2)

for row in cursor:
    print(row)

