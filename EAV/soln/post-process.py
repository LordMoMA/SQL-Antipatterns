import mysql.connector

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

issue_id = 1234
query = """
     SELECT attr_name, attr_value
     FROM IssueAttributes
     WHERE issue_id = %s"""
cursor.execute(query, (issue_id,))
issue = {}
for (row) in cursor:
    (field, value) = row
    issue[field] = value

cnx.commit()
