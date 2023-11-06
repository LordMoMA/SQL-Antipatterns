import mysql.connector
from flask import Flask, Response, request

app = Flask(__name__)

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

@app.route('/products', methods = ['GET'])
def get_products():
    bugid = int(request.args.get("bugid"))

    # SAFE!
    sql = f"SELECT * FROM Bugs WHERE bug_id = {bugid}"

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())

if __name__ == '__main__':
    app.run()
