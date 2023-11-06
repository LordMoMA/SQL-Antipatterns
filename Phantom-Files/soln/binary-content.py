import mysql.connector
from flask import Flask, Response

app = Flask(__name__)

@app.route('/')
def screenshot():
    cnx = mysql.connector.connect(user='scott', database='test')

    cursor = cnx.cursor()
    query = """
      SELECT screenshot_image FROM Screenshots
      WHERE bug_id = %s AND image_id = %s"""
    cursor.execute(query, (1234, 1,))
    row = cursor.fetchone()
    cursor.close()

    if row:
        screenshot_image = row[0]
        return Response(screenshot_image, mimetype='image/jpeg')
    else:
        return Response(status=404)

if __name__ == '__main__':
    app.run()
