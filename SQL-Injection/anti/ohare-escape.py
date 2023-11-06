import mysql.connector
import json
from flask import Flask, Response, request

app = Flask(__name__)

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

@app.route('/products', methods = ['GET'])
def get_products():
    product_name = cnx.converter.escape(request.args.get("name"))

    # SAFE!
    sql = f"SELECT * FROM Products WHERE product_name = '{product_name}'"

    cursor.execute(sql)
    return json.dumps(cursor.fetchall())

if __name__ == '__main__':
    app.run()
