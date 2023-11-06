import mysql.connector
import json
from flask import Flask, Response, request

app = Flask(__name__) #(1)

cnx = mysql.connector.connect(user='scott', database='test') #(2)
cursor = cnx.cursor()

@app.route('/products', methods = ['GET']) #(3)
def get_products(): #(4)
    product_name = request.args.get("name") #(5)

    # UNSAFE!
    sql = f"SELECT * FROM Products WHERE product_name = '{product_name}'" #(6)

    cursor.execute(sql) #(7)
    return json.dumps(cursor.fetchall())

if __name__ == '__main__':
    app.run() #(8)

