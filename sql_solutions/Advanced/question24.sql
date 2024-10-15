-- How many package were developed by the person who developed the chepest package, where did he/she study

WITH Cheapest_Package AS (
    SELECT 
        PNAME, 
        MIN(DCOST) AS Min_Cost
    FROM 
        SOFTWARE
    GROUP BY 
        PNAME
    ORDER BY 
        Min_Cost
    LIMIT 1
)
SELECT 
    S.PNAME, 
    S.SPLACE, 
    COUNT(SW.PNAME) AS "Number of Packages"
FROM 
    STUDIES S
JOIN 
    SOFTWARE SW ON S.PNAME = SW.PNAME
WHERE 
    S.PNAME = (SELECT PNAME FROM Cheapest_Package)
GROUP BY 
    S.PNAME, S.SPLACE;