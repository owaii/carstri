import os
import json
import sqlite3

#PreDir is a variable that points to py directory, beacause somehow everything is being created outside of carstri folder
preDir = "carstri/py/"

#Database creation
dbName = "my.db"
dbDir = preDir + dbName

connection = sqlite3.connect(dbDir)
db = connection.cursor()

#A Class to handle JSON file
class iJson:
    fileName = "data.json"
    fileDir = preDir + fileName
    newData = {
        "FirstOpen" : 0
    }
    
    @staticmethod
    def Create():
        if (os.path.exists(iJson.fileDir)):
            pass
        else:
            with open(iJson.fileDir, "w") as file:
                json.dump(iJson.newData, file, indent=4)

    @staticmethod
    def Get(name):
        with open(iJson.fileDir, "r") as file:
            data = json.load(file)
        return data.get(name, None)

    @staticmethod
    def Write(name, newValue):
        with open(iJson.fileDir, "r") as file:
            data = json.load(file)
        
        data[name] = newValue

        with open(iJson.fileDir, "w") as file:
            json.dump(data, file)


#Sql handling class
class sqlHand:
    @staticmethod
    def Init():
        iJson.Create()
        
        if int(iJson.Get("FirstOpen")) == 0:
            try:
                with open(os.path.join(preDir, "sql", "dbStruct.sql"), "r") as file:
                    sql_script = file.read()
                    db.executescript(sql_script)
                    
                iJson.Write("FirstOpen", 1)
            except FileNotFoundError:
                print("Couldn't find dbStruct.sql file")
            except Exception as e:
                print(f"An error occurred while executing SQL: {e}")

