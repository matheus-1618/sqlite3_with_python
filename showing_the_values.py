import sqlite3
#connect to database, if there is no one created 
#So it's will create someone new
conn = sqlite3.connect('customer.db')

#creating a cursor
c= conn.cursor()

#Printing the primary key(id) of the each item in the table
c.execute("SELECT * FROM ter2")
#for selecting a strict values
x=c.fetchone()

#for selecting an amount of values
y=c.fetchmany()
print(y)

#for selecting the entire table in form of list
z=c.fetchall()
print(z)

#getting the primary key of the rows
c.execute("SELECT rowid,* FROM ter2")
k=c.fetchall()
print(k)

#commit our command
conn.commit()

#close our connection
conn.close()