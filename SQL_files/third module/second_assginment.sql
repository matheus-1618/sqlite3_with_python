--First Question
SELECT a.Name
FROM Tracks a
WHERE a.AlbumId=(SELECT AlbumId
FROM Albums
WHERE Title='Californication');

--Second Question
SELECT FirstName,
LastName,
City,
Email,
COUNT(a.CustomerId)
FROM Customers b INNER JOIN Invoices a
ON b.CustomerId=a.CustomerId
GROUP BY b.CustomerId;

--Third Question
SELECT Name,
a.Title,
a.ArtistId,
TrackId
FROM Tracks b INNER JOIN Albums a 
ON b.AlbumId=a.AlbumId;

--Fourth Question
SELECT a.Lastname As managers,b.Lastname as employees
FROM Employees a INNER JOIN Employees b
ON a.Title LIKE "%Manager" 
AND b.ReportsTo=a.EmployeeId;

--Fifth Question
SELECT a.Name,a.ArtistId
FROM Artists a LEFT JOIN Albums b
ON b.ArtistId=a.ArtistId
WHERE b.Title IS NULL;

--Sixth Question
SELECT FirstName,LastName
FROM Employees
UNION
SELECT FirstName,LastName
FROM Customers
ORDER BY
LastName DESC;

--Seventh Question
SELECT COUNT(a.CustomerId)
FROM Customers a INNER JOIN Invoices b
ON a.CustomerId=b.CustomerId
AND a.City IS NOT b.BillingCity;