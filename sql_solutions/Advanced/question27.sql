-- List the programmers (from the software table) and the institutes they studied,including those who didn’t develop any package

SELECT 
    S.PNAME, 
    S.SPLACE, 
    CASE 
        WHEN SW.PNAME IS NOT NULL THEN 'Yes' 
        ELSE 'No' 
    END AS "Developed Software"
FROM 
    STUDIES S
LEFT JOIN 
    SOFTWARE SW ON S.PNAME = SW.PNAME
GROUP BY 
    S.PNAME, S.SPLACE
ORDER BY 
    S.PNAME;