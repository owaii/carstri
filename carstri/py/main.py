from includes.iJ import iJ
from includes.std import std
from includes.sqly import sqly

def Init():
    if (std.PathExists("data.json") == False):
        iJ.ImportData()

    sqly.InitDb()

if __name__ == "__main__":
    Init()