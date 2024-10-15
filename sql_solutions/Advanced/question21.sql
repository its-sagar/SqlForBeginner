-- Which is the costliest package developed by a person which under 3 year experience


SELECT 
    TITLE AS "Package Title", 
    PNAME AS "Programmer", 
    DCOST AS "Development Cost", 
    DOJ AS "Date of Joining"
FROM 
    PROGRAMMER P
JOIN 
    SOFTWARE S ON P.PNAME = S.PNAME
WHERE 
    TIMESTAMPDIFF(YEAR, P.DOJ, CURDATE()) < 3
ORDER BY 
    S.DCOST DESC
LIMIT 1;