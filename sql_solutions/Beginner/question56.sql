-- What is the Average development cost of a package developed in COBOL

SELECT 
    AVG(DCOST) AS "Average Development Cost"
FROM 
    SOFTWARE
WHERE 
    DEV_IN = 'COBOL';
