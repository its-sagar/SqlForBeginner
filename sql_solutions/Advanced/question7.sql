-- Display the details of the software developed in dbase by male programmers who belong to the institute in which most number of programmers studied

select p.*, 
s.SPLACE, s.COURSE, s.CCOST,
sw.TITLE	, sw.DEV_IN, sw.DCOST, sw.SCOST, sw.SOLD
from programmer as p
join studies as s
on s.pname = p.pname
join software as sw
on sw.pname = s. pname
where p.sex = 'M' and sw.dev_in = 'DBASE' and s.splace in (select splace from studies
			group by splace
			having count(*) = (
				select max(c) 
				from (select splace, count(*) as c from studies 
				group by splace) as temp));
