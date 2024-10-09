import json
import sqlite3 as sql

dbName = 'my.db'

conn = sql.connect(dbName)
db = conn.cursor()

class std:
    @staticmethod
    def log(txt):
        print(txt)

class iJson:
    fileName = 'data.json'
    data = []

    @staticmethod
    def Read():
        with open(iJson.fileName, "rt") as content:
            iJson.data = json.load(content)

    @staticmethod
    def Get(name):
        return {iJson.data[name]}  
    
class dbHand:
    baseFile = 'dbStruct.sql'
    @staticmethod
    def InitDb():
        with open(f"sql/{dbHand.baseFile}", 'rt') as content:
            sqlFileContent = content.readlines()
        db.execute(sqlFileContent)
    

    
