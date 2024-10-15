-- What is the amount paid in salaries of the male programmers who don’t know cobol.

SELECT 
    SUM(SALARY) AS "Total_Salary"
FROM 
    PROGRAMMER
WHERE 
    SEX = 'M' 
    AND (PROF1 <> 'COBOL' AND PROF2 <> 'COBOL');