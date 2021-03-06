--Using IN statement
SELECT * 
FROM CLOTHES1
WHERE ID IN (1435,1434,1433);
--Using OR statement
SELECT *
FROM CLOTHES1
WHERE ID = 1434 OR 120;
--IN works the same of OR, but IN executes faster than OR and can contain another SELECT option
--OR with AND
SELECT *
FROM CLOTHES1
WHERE ID=1434 OR 120 
AND Type !='Pink';
--NOT operator
SELECT *
FROM CLOTHES1
WHERE NOT ID=1433 AND NOT Type='Pink';