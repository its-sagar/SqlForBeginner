-- List each prof1 with the number of programmers having the prof1 and the number of packages developed in that prof1.

SELECT 
    P.PROF1, 
    COUNT(DISTINCT P.PNAME) AS "Number of Programmers", 
    COUNT(SW.PNAME) AS "Number of Packages"
FROM 
    PROGRAMMER P
LEFT JOIN 
    SOFTWARE SW ON P.PNAME = SW.PNAME AND SW.DEV_IN = P.PROF1
GROUP BY 
    P.PROF1;