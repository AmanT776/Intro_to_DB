import mysql.connector
from dotenv import load_dotenv
import os

load_dotenv()

db_password = os.getenv("db_password")

try:
    cnx = mysql.connector.connect(
    user = "aman",
    password=db_password,
    host="localhost"
)
except Exception:
    print(Exception)
my_cursor = cnx.cursor()

create_db = my_cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")



if(create_db):
    print("Database 'alx_book_store' created successfully!")
