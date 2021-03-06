import sqlite3
#connect to database, if there is no one created 
#So it's will create someone new
conn = sqlite3.connect('customer.db')

#creating a cursor
c= conn.cursor()

#Query the database
c.execute("SELECT * FROM ter2 WHERE second_line = 'mat'")
#We can use to filter by numbers
c.execute("SELECT * FROM ter2 WHERE second_line>=1")
#Finding a type ou initial of the word that we want
c.execute("SELECT * FROM ter2 WHERE first_line LIKE 'jo%'")
c.execute("SELECT * FROM ter2 WHERE third_line LIKE '%cero'")
#printing the result 
print(c.fetchall())
#commit to the database 
conn.commit()
#closing the connection
conn.close()