import pymysql
from pymongo import MongoClient
from datetime import datetime, date

# Function to convert date fields to ISO format
def convert_dates(row):
    for key, value in row.items():
        if isinstance(value, date):
            row[key] = value.isoformat()
    return row

# Establishing MySQL connection
conn = pymysql.connect(
    host='127.0.0.1',
    user='root',
    password='admin',
    database='musicstream'
)

# Establishing MongoDB connection
client = MongoClient('mongodb://localhost:27017/')
db = client['musicstream']

# Function to transfer data from MySQL to MongoDB
def transfer_table(mysql_table, mongo_collection):
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    cursor.execute(f"SELECT * FROM {mysql_table}")
    rows = cursor.fetchall()
    if rows:
        converted_rows = [convert_dates(row) for row in rows]
        try:
            # Clear existing data in MongoDB collection
            db[mongo_collection].delete_many({})
            # Insert new data
            db[mongo_collection].insert_many(converted_rows)
            print(f"Data from MySQL table '{mysql_table}' transferred to MongoDB collection '{mongo_collection}'")
        except Exception as e:
            print(f"Error transferring data from MySQL table '{mysql_table}' to MongoDB collection '{mongo_collection}': {e}")

# List of tables to transfer
tables = [
    ('users', 'users'),
    ('artists', 'artists'),
    ('albums', 'albums'),
    ('songs', 'songs'),
    ('playlists', 'playlists'),
    ('contains', 'contains')
]

# Transfer data for each table
for mysql_table, mongo_collection in tables:
    transfer_table(mysql_table, mongo_collection)

print("Data transfer completed!")


