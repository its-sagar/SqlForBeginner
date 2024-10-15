--  Display each programmers name costliest package and cheapest packages developed by him/her.

SELECT 
    costliest.pname,
    costliest.title AS costliest_package_title,
    costliest.dev_in AS costliest_language,
    costliest.scost AS costliest_price,
    cheapest.title AS cheapest_package_title,
    cheapest.dev_in AS cheapest_language,
    cheapest.scost AS cheapest_price
FROM 
    (SELECT pname, MAX(scost) AS max_scost FROM software GROUP BY pname) AS max_price
JOIN 
    software AS costliest 
    ON max_price.pname = costliest.pname AND max_price.max_scost = costliest.scost
JOIN 
    (SELECT pname, MIN(scost) AS min_scost FROM software GROUP BY pname) AS min_price
    ON max_price.pname = min_price.pname
JOIN 
    software AS cheapest 
    ON min_price.pname = cheapest.pname AND min_price.min_scost = cheapest.scost;

SELECT *
FROM 
    (SELECT pname, MAX(scost) AS max_scost FROM software GROUP BY pname) AS max_price
JOIN 
    software AS costliest 
    ON max_price.pname = costliest.pname AND max_price.max_scost = costliest.scost
JOIN 
    (SELECT pname, MIN(scost) AS min_scost FROM software GROUP BY pname) AS min_price
    ON max_price.pname = min_price.pname
JOIN 
    software AS cheapest 
    ON min_price.pname = cheapest.pname AND min_price.min_scost = cheapest.scost;