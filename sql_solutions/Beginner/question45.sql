-- Display highest,lowest and average salaries for those earn more than 2000

select max(salary) as Highest_salary,
Avg(salary) as Average_salary,
min(salary) as Lowest_salary
from programmer
where salary > 2000;