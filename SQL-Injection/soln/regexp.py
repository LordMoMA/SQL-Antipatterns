import mysql.connector
import json
from flask import Flask, Response, request

app = Flask(__name__)

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

import re

@app.route('/bugs', methods = ['GET'])
def get_bugs():
    o = request.args.get("order") #(1)

    if re.search('^\w+$', o): #(2)
        sortorder = o

    else:
        sortorder = "date_reported" #(3)

    # SAFE!
    sql = f"SELECT * FROM Bugs ORDER BY {sortorder}" #(4)

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())

if __name__ == '__main__':
    app.run()
