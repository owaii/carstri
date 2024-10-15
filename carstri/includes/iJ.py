#File that handles IJson Files
import json

class iJ:
#public:
    BASICPATH = "carstri/"
    FILENAME = "data.json"
    FILEPATH = BASICPATH + FILENAME
    JSONDATA = {
        "FirstOpen" : 0
    }

#public:
    @staticmethod
    def ImportData():
        with open(iJ.FILEPATH, "w") as jFile:
            json.dump(iJ.JSONDATA, jFile, indent=4)


        
