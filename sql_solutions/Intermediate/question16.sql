--  Which institute conducts the above course

select * 
from studies
where course in (
	select course from studies
 	group by course
	having count(pname) < (
		 select count(pname)/count(distinct(course)) 
		from studies));