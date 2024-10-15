-- Who is that above programmer

-- Step 1: Find languages known by only one programmer
WITH UniqueLanguages AS (
    SELECT 
        language
    FROM (
        SELECT 
            PROF1 AS language
        FROM 
            PROGRAMMER
        UNION ALL
        SELECT 
            PROF2 AS language
        FROM 
            PROGRAMMER
    ) AS combined_languages
    GROUP BY 
        language
    HAVING 
        COUNT(*) = 1
)

-- Step 2: Retrieve programmer information for those unique languages
SELECT 
    PNAME AS "Programmer", 
    language AS "Language"
FROM 
    PROGRAMMER
JOIN 
    UniqueLanguages ON 
    UniqueLanguages.language IN (PROGRAMMER.PROF1, PROGRAMMER.PROF2);