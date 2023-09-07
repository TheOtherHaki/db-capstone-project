print("Importing MySQL Connector/Python API")
import mysql.connector as connector
print("MySQL Connector/Python API is imported successfully.\n")

print("Establishing a new connection between MySQL and Python.")
connection = connector.connect(user = "root", password = "cerGav9ofdac", db = "littlelemondm")
print("A connection between MySQL and Python is successfully established")

cursor = connection.cursor()

show_tables_query = "SHOW tables" 

cursor.execute(show_tables_query)

results = cursor.fetchall()

print(results)

query_table = """
SELECT Fullname as "Name", ContactNumber as "Phone", Email
FROM Customers
INNER JOIN Orders on Customers.CustomerID = Orders.CustomerID
WHERE Cost > 60
"""

cursor.execute(query_table)

# Fetch all results that satisfy the query and store them in a tuple
results = cursor.fetchall()

#get the column names
cols = cursor.column_names

#print the column names and the results
print(cols)
for item in results:
    print(item)