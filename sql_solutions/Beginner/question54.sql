-- How many female programmers knowning cobol have more then 2 years experience.

SELECT 
    COUNT(*) AS "Number of Female Programmers"
FROM 
    PROGRAMMER
WHERE 
    SEX = 'F'
    AND PROF1 = 'COBOL'
    OR PROF2 = 'COBOL'
    AND (YEAR(CURDATE()) - YEAR(DOJ)) > 2;