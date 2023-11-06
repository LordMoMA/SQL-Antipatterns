import mysql.connector
import json
from flask import Flask, Response, request

app = Flask(__name__)

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

@app.route('/accounts', methods = ['GET'])
def get_account():
    account_name_escaped = cnx.converter.escape(request.args.get("name"))

    # SAFE!
    sql = f"""SELECT * FROM Accounts
        WHERE account_name = '{account_name_escaped}'"""

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())

if __name__ == '__main__':
    app.run()
