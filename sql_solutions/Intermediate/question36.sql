-- Who are the male programmers earning below the average salary of female programmers

select pname, salary from programmer
where sex = 'M' and salary < (select avg(salary) from programmer where sex = 'F');