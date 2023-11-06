import mysql.connector
import os

cnx = mysql.connector.connect(user='scott', database='test')

cursor = cnx.cursor()

query = "SELECT image_path FROM Screenshots WHERE bug_id = %s AND image_id = %s"
cursor.execute(query, (1234, 1,))
row = cursor.fetchone()
cursor.close()

if row:
    image_path = row[0]
    with open(image_path) as image_file:
        image_content = image_file.read()
