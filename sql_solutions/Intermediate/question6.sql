-- Which language is known by only one programmer

SELECT 
    language AS "Language"
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
    COUNT(*) = 1;