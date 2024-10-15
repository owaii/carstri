import os
import sqlite3 as sql

PREPATH = "carstri/"
DBNAME = "carstri.db"
DBPATH = "carstri.sql"

connection = sql.connect(PREPATH + DBNAME)
db = connection.cursor()

class sqly:
#public:
    @staticmethod
    def InitDb():
        try:
            with open(os.path.join(PREPATH, "sql", DBPATH), "r") as file:
                db.executescript(file.read())               
        except FileNotFoundError:
            print(f"Couldn't find {DBPATH} file")
        except Exception as e:
            print(f"An error occurred while executing SQL: {e}")

    @staticmethod
    def SELECT(table, columns="*", where = None, join = None):
        try:
            db.execute(f"SELECT {columns} FROM {table}")

            if where != None:
                query += f"WHERE = {where}"

            if join != None:
                query += f"JOIN = {join}"

            return db.fetchall()
        except sql.Error as e:
            print(f"An error occurred while selecting from {table}: {e}")
            return []
            