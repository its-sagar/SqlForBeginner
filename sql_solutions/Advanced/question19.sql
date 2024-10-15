--  How much does the person who developed the highest selling package earn and what course did he/she undergo

SELECT s.pname, s.dcost AS earnings, st.course
FROM software AS s
JOIN studies AS st ON s.pname = st.pname
WHERE s.sold = (
    SELECT MAX(sold) 
    FROM software
);