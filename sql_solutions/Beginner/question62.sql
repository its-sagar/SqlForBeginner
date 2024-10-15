-- Display the name, job, dob, doj of those month of birth and month of joining are the same.

SELECT 
    PNAME AS "Name", 
    PROF1 AS "Job", 
    DOB AS "DOB", 
    DOJ AS "DOJ"
FROM 
    PROGRAMMER
WHERE 
    MONTH(DOB) = MONTH(DOJ);