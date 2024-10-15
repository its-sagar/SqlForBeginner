-- Display the Details of PACKAGES whose sales CROSSED the 2000 mark.

SELECT *
FROM software
WHERE (scost * sold) > 2000;