-- Display the language used by each programmer to develop the highest selling and the lowest selling package

select s.pname, s.min_scost, t.max_scost
from (
select pname, min(scost) as min_scost
from software
group by pname) as s
join
(select pname, max(scost) as max_scost
from software
group by pname) as t
on s.pname = t.pname;