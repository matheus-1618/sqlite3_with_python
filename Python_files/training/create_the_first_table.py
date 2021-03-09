import sqlite3
#connect to database, if there is no one created 
#So it's will create someone new database 
conn = sqlite3.connect('customer.db')

#creating a cursor,where we'll send the commands to be sent to the cursor
c= conn.cursor()

# create a table
#Those commands you must know by the idiom of the DB type that you are using
c.execute("""CREATE TABLE ter2
(first_line DATATYPE,
second_line DATATYPE,
third_line DATATYPE
)""")

#commit our command
conn.commit()

#close our connection
conn.close()