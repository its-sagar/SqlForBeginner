-- Display the title, scost, dcost and difference between scost and dcost in decending order of difference.

SELECT 
    TITLE, 
    SCOST, 
    DCOST, 
    (SCOST - DCOST) AS "Difference"
FROM 
    SOFTWARE
ORDER BY 
    Difference DESC;