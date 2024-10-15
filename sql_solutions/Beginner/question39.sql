-- Display the name of male and female programmers.

select distinct(pname), sex
from programmer
where sex = 'M'
union
select distinct(pname), sex
from programmer
 where sex = 'F';