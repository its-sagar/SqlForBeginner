--  How much revenue has been earned thru’ sale of packages developed in C

SELECT SUM(scost * sold) AS total_revenue
FROM software
WHERE dev_in = 'C';