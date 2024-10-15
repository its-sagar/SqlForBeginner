-- How many packages were developed by female programmers earning more than the highest paid male programmer

select count(*) as No_of_Package_Developed from software 
where pname in (select pname
from programmer
where sex = 'F' and salary > (select max(salary) from programmer where sex = 'M'));