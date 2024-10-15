-- Display the names of the programmers whose names contain 2 occurance of the better “A”

SELECT 
    PNAME
FROM 
    PROGRAMMER
WHERE 
    LENGTH(PNAME) - LENGTH(REPLACE(UPPER(PNAME), 'A', '')) = 2;