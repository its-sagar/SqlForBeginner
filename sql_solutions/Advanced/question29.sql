-- List the programmer name(from the programmer table) and the number of packages each has developed.

SELECT 
    P.PNAME, 
    COUNT(SW.PNAME) AS "Number of Packages"
FROM 
    PROGRAMMER P
LEFT JOIN 
    SOFTWARE SW ON P.PNAME = SW.PNAME
GROUP BY 
    P.PNAME
ORDER BY 
    P.PNAME;