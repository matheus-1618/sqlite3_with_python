import sqlite3
#connect to database, if there is no one created 
#So it's will create someone new database 
conn = sqlite3.connect('customer.db')

#creating a cursor,where we'll send the commands to be sent to the cursor
c= conn.cursor()

# filling a table with strict values
c.execute(""" INSERT INTO ter2 VALUES ('32','213','232')
""")
print('Code has already sucesseful run')

# fillling table with many values
various_lines=[('joao','augusto','metric'),
('met','mat','mot'),
('leroy','dj azeirtona','cicero')]
c.executemany("""INSERT INTO ter2 VALUES(?,?,?)
""",various_lines)

#commit our command
conn.commit()

#close our connection
conn.close()