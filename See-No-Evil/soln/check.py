import mysql.connector
from mysql.connector import errorcode

try:
    cnx = mysql.connector.connect(user='scott', database='test')

except mysql.connector.Error as err: # check for errors (1)
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)

cursor = cnx.cursor()

try:
    query = '''SELECT bug_id, summary, date_reported FROM Bugs
        WHERE assigned_to = %s AND status = %s'''

    parameters = (1, 'NEW')

    cursor.execute(query, parameters)

except mysql.connector.Error as err: # (2)
    print(err)
