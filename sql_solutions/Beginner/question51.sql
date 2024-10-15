-- How many different courses are mentioned in the studies table

SELECT COUNT(DISTINCT COURSE) AS "Number of Different Courses"
FROM STUDIES;