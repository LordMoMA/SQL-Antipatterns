import mysql.connector
import json
from flask import Flask, Response, request

app = Flask(__name__)

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

@app.route('/bugs-unsafe', methods = ['GET'])
def get_bugs_unsafe():
    sortorder = request.args.get("order")
    direction = request.args.get("dir")

    # UNSAFE!
    sql = f"SELECT * FROM Bugs ORDER BY {sortorder} {direction}"

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())

@app.route('/bugs-safe', methods = ['GET'])
def get_bugs_safe():
    sortorders = {"status": "status", "date": "date_reported"} #(1)
    directions = {"up": "ASC", "down": "DESC"} #(2)

    s = request.args.get("order") #(3)
    if s in sortorders:
        sortorder = sortorders[s]
    else:
        sortorder = "bug_id"

    d = request.args.get("dir") #(4)
    if d in directions:
        direction = directions[d]
    else:
        direction = "ASC"

    # SAFE!
    sql = f"SELECT * FROM Bugs ORDER BY {sortorder} {direction}" #(5)

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())

if __name__ == '__main__':
    app.run()
