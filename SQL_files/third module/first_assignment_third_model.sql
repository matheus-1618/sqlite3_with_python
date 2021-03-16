--First Answer
SELECT COUNT(AlbumId) As Answer
FROM Albums
WHERE Albums.ArtistId=(SELECT ArtistId
FROM artists
WHERE Name='Led Zeppelin');

--Second Answer
SELECT a.Title, t.UnitPrice
FROM Albums a 
INNER JOIN Tracks t ON a.AlbumId = t.AlbumId
INNER JOIN Artists ar ON ar.ArtistID = a.ArtistID 
WHERE ar.Name = 'Audioslave';

--Third Answer
SELECT a.FirstName,a.LastName
FROM customers a
WHERE a.CustomerId  NOT IN (SELECT b.CustomerId
FROM invoices b );

--Fourth Answer
SELECT SUM(a.UnitPrice),b.Title
FROM  tracks a
INNER JOIN albums b ON a.AlbumId=b.AlbumId
WHERE b.Title='Big Ones';

--Fifth Answer
SELECT a.InvoiceId
FROM invoices a CROSS JOIN invoice_items b;