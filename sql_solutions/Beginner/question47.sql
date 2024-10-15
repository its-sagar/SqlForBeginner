-- Calculate the amount to be recovered for those packages whose development cost has not yet been recovered.

SELECT 
    PNAME, 
    TITLE, 
    DCOST, 
    (DCOST - (SCOST * SOLD)) AS "Amount to be Recovered"
FROM 
    SOFTWARE
WHERE 
    (SCOST * SOLD) < DCOST;