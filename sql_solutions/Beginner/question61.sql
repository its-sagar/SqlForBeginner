-- Display the names of the packages whose names contain more than 1 word.

SELECT 
    TITLE
FROM 
    SOFTWARE
WHERE 
    TITLE LIKE '% %';