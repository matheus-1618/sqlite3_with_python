--Wild card is a special character to match parts of a value
--Search a pattern made from literal text,wildcard character or a combination
--Uses LIKE as an operator
--Can only be used with strings
--Cannot be used with non-test datatypes
-- "pizza%" records every word after pizza
--"%pizza" grabs every word before pizza
--"%pizza%" grabs the both cases above
--"S%E" grabs everything with this pattern, ex: Same
SELECT * 
FROM CLOTHES1
WHERE Brand LIKE "Gu%";