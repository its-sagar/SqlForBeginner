--  Who are the female programmers earning more than the highest paid male programmer

select pname, salary from programmer
where sex = 'F' and salary > (select max(salary) from programmer where sex = 'M');