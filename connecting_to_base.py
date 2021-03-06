import sqlite3
#connect to database, if there is no one created 
#So it's will create someone new database 
conn = sqlite3.connect('customer.db')

#creating a cursor,where we'll send the commands to be sent to the cursor
c= conn.cursor()



#commit our command to database
conn.commit()

#close our connection with the base
conn.close()