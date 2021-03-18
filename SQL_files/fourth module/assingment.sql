--Questão 1
SELECT a.CustomerId,
a.FirstName,
a.LastName,
a.Address,
UPPER(a.City ||' '||a.Country||' ' )AS IMP
FROM Customers a;

--Questão 2
SELECT FirstName,LastName,
LOWER(SUBSTR(FirstName,1,4)||SUBSTR(LastName,1,2))
AS New_id
FROM Employees;

--Questão 3
SELECT
FirstName||' '||LastName as RealName
FROM Employees
WHERE 
STRFTIME('%Y','now')-STRFTIME('%Y',HireDate)>=15
ORDER BY
LastName ASC;

--Questão 4
SELECT * FROM Customers
WHERE Company IS NULL;

--Questão 5
SELECT City,COUNT(*)
FROM Customers
GROUP BY City
ORDER BY COUNT(*) DESC;

--Questão 6
SELECT a.FirstName||a.LastName||b.InvoiceId as NewInvoiceID
FROM Invoices b INNER JOIN Customers a
ON a.FirstName IS 'Astrid' AND
b.CustomerId=a.CustomerId;