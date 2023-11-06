import mysql.connector
import json
from flask import Flask, Response, request

app = Flask(__name__)

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

@app.route('/setpass', methods = ['POST'])
def set_password():
    userid = request.form["userid"]
    password = request.form["password"]

    # SAFE!
    sql = """UPDATE Accounts
        SET password_hash = SHA2(%s, 256)
        WHERE account_id = %s"""

    cursor.execute(sql, [password, userid])
    cnx.commit()
    return "OK"

if __name__ == '__main__':
    app.run()
