--  Display the name, sex, dob(DD/MMYY format), doj(DD/MM/YY) for all the programmers, without using conversion function.

SELECT 
    PNAME AS "Name", 
    SEX AS "Sex", 
    DATE_FORMAT(DOB, '%d/%m%y') AS "DOB", 
    DATE_FORMAT(DOJ, '%d/%m%y') AS "DOJ"
FROM 
    PROGRAMMER;