import mysql.connector
from flask import Flask, Response, request

app = Flask(__name__)

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

@app.route('/setpass', methods = ['POST'])
def set_password():
    userid = request.form["userid"]
    password = cnx.converter.escape(request.form["password"])

    # STILL UNSAFE!
    query = f"""UPDATE Accounts
        SET password_hash = SHA2('{password}', 256)
        WHERE account_id = {userid}"""

    cursor.execute(query)
    cnx.commit()
    return "OK"

if __name__ == '__main__':
    app.run()
