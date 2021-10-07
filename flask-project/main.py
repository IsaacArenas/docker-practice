from flask import Flask
import mysql.connector
import os
import json

app = Flask(__name__)
env = os.environ
DB_USER= env.get('DB_USER')
DB_PASS= env.get('DB_USER_PASS')
DB_HOST= env.get('DB_HOST')
DB_NAME= env.get('DB_NAME')
config = {
  'user': DB_USER,
  'password': DB_PASS,
  'host': DB_HOST,
  'database': DB_NAME
}

    
@app.route("/images", methods = ['POST', 'GET'])
def getImages():
    print(config)
    cnx = mysql.connector.connect(**config)
    cursorA = cnx.cursor()
    cursorA.execute("SELECT * FROM images")
    result = cursorA.fetchall()
    cnx.close()
    resultJson =json.dumps(parseResults(result))
    return resultJson

def parseResults(resultList):
    results=[]
    for item in resultList:
        results.append({
            'id': item[0],
            'url': item[1],
            'name':item[2], 
            'vertical': item[3]==1
        })
    return results
    
    

