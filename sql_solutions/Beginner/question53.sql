-- Display the names of programmers whose names contain upto 5 characters

SELECT 
    PNAME
FROM 
    PROGRAMMER
WHERE 
    LENGTH(PNAME) <= 5;