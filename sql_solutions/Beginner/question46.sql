-- Display the details of those who will be completing 2 yrs or service this year.


SELECT 
    PNAME, DOB, DOJ, SEX, PROF1, PROF2, SALARY
FROM 
    PROGRAMMER
WHERE 
    YEAR(DOJ) = YEAR(CURDATE()) - 2;