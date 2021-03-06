SELECT *
FROM CLOTHES
--Selecting the condition
--With the common math operators used to filter
--there are the BETWEEN and IS NULL operators
WHERE Type !='gucci'; 

--Checking for Non-matches
SELECT * 
FROM CLOTHES
WHERE Type <> 'gucci';

--Using between Clause
SELECT * FROM CLOTHES WHERE ID BETWEEN 0 AND 2000;

--Using IS NULL statement
SELECT * FROM CLOTHES1 WHERE let IS NULL;