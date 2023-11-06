import mysql.connector
import hashlib

cnx = mysql.connector.connect(user='scott', database='test')
cursor = cnx.cursor()

# For the sake of simplicity in this code example, the name and password
# are fixed values. In a real application, they would be inputs.
name = 'bill'
password = 'xyzzy';

query = "SELECT password_hash, salt FROM Accounts WHERE account_name = %s"
cursor.execute(query, (name,))
for (row) in cursor:
    stored_hash = row[0]
    # salt is stored as binary bytes, so it must be decoded to a string.
    salt = row[1].decode()

# Concatenate the input password with the stored salt, and produce a hash.
m = hashlib.sha256()
m.update(f"{password}{salt}".encode('utf-8'))
input_hash = m.hexdigest()

# Compare the hash of the input against the hash stored in the database.
if input_hash == stored_hash:
    print("match successful!")
