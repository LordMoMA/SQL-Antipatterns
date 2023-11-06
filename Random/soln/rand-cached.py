import mysql.connector
from flask import Flask, Response, jsonify, request
from functools import lru_cache

app = Flask(__name__)

@app.route('/advert')
def advert():
    if request.args.get("reset"):
        get_random_advert.cache_clear()
    return jsonify(get_random_advert())

@lru_cache(maxsize=1)
def get_random_advert():
    cnx = mysql.connector.connect(user='scott', database='test')
    cursor = cnx.cursor()
    cursor.execute("SELECT * FROM Adverts ORDER BY RAND() LIMIT 1")
    columns = [col[0] for col in cursor.description]
    advert = dict(zip(columns, cursor.fetchone()))
    cnx.commit()
    return advert

if __name__ == '__main__':
    app.run()
