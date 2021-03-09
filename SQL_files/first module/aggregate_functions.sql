--They're used summarize data
--Finding the highest and lowest values, find the number of rows
--Finding the average value
SELECT AVG(ID) as Avg
FROM CLOTHES1;

--Count the rows
SELECT COUNT(*) AS TOTAL
FROM CLOTHES1;

--MAX
SELECT MAX(ID) as MAX 
FROM CLOTHES1;

--MIN
SELECT MIN(ID) as MIN 
FROM CLOTHES1;

--SUM 
SELECT SUM(ID) as total_price
FROM CLOTHES1;

--DISTINCT EXCLUDE THE VALUE
SELECT COUNT(DISTINCT Type)
FROM CLOTHES1;

--- Add a new column 'NewColumnName' to table 'TableName' in schema 'SchemaName'
-- ALTER TABLE SchemaName.TableName
--     ADD NewColumnName /*new_column_name*/ int /*new_column_datatype*/ NULL /*new_column_nullability*/
-- GO
