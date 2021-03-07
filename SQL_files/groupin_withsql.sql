--order and agroup in the way we want
SELECT *,COUNT(Type) as total
FROM CLOTHES1
GROUP BY Type;

--HAvind statement
SELECT *,COUNT(*) as Orders
FROM CLOTHES1
GROUP BY Type
HAVING COUNT (*)>0;