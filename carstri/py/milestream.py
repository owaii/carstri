import os
import json
import sqlite3 as sql

class iJson:
    fileName = "data.json"
    fileDir = f"carstri/py/{fileName}"
    data = {
        "FirstOpen" : 0
    }

    @staticmethod
    def Create():
        if (os.path.exists(iJson.fileDir)):
            pass
        else:
            with open(iJson.fileDir, "w") as file:
                json.dump(iJson.data, file, indent=4)

