-- WHAT are the languages known by the male programmers

SELECT DISTINCT prof1 AS language
FROM programmer
WHERE sex = 'M'
UNION
SELECT DISTINCT prof2 AS language
FROM programmer
WHERE sex = 'M';