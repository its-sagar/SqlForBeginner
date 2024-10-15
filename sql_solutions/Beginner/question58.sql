-- Who are the programmers who were born on the last day of the month.

SELECT 
    PNAME AS "Name", 
    DOB AS "DOB" 
FROM 
    PROGRAMMER 
WHERE 
    DAY(DOB) = 31 
    OR (DAY(DOB) = 30 AND MONTH(DOB) IN (4, 6, 9, 11)) 
    OR (DAY(DOB) = 29 AND MONTH(DOB) = 2) 
    OR (DAY(DOB) = 28 AND MONTH(DOB) = 2 AND YEAR(DOB) % 4 <> 0);