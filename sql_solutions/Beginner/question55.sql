-- What is the length of the shortest name in the programmer table.

SELECT 
    MIN(LENGTH(PNAME)) AS "Length of Shortest Name"
FROM 
    PROGRAMMER;
