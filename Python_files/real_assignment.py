import sqlite3
#connecting with the database
conn=sqlite3.connect('Python_files/assignment1.sqlite')
#selecting the cursor
cur=conn.cursor()
#dropping existing tables
cur.execute('DROP TABLE IF EXISTS Counts')
#supplanting with a new table everytime the code runs
cur.execute('''CREATE TABLE Counts
(org TXT,
count INTEGER);''')

#input the name of the DB file
file_name = input('Enter file name: ')
if (len(file_name) < 1): file_name = 'mbox.txt'

#open the file in the directory with the organizations
with open('Python_files/'+file_name,'r') as file:

    #getting the lines in the file
    for line in file:

        #avoiding the lines where there is not a email string
        if not line.startswith('From: '):
            continue

        #splitting the email
        pieces = line.split()

        #getting the domain
        domain=pieces[1].split('@')[1]

        #getting the DB the counts and compair with the element
        cur.execute('SELECT count FROM Counts WHERE org = ? ', (domain,))
        row = cur.fetchone()

        #adding a count if is the first time of org in the DB
        if row is None:
            cur.execute('''INSERT INTO Counts (org, count)
                    VALUES (?, 1)''', (domain,))

        #updating the counting of the org with a new apperance
        else:
            cur.execute('UPDATE Counts SET count = count + 1 WHERE org = ?',
                        (domain,))
#updating the DB
conn.commit()

#showing the result table in prompt terminal
sqlstr = 'SELECT org, count FROM Counts ORDER BY count DESC LIMIT 10'

#printing
for row in cur.execute(sqlstr):
    print(str(row[0]), row[1])
    
#closing the connection with the DB
cur.close()
