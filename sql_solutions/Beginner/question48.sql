-- List the packages which have not been sold so far

SELECT 
    PNAME, 
    TITLE, 
    DCOST, 
    SCOST, 
    SOLD
FROM 
    SOFTWARE
WHERE 
    SOLD = 0;