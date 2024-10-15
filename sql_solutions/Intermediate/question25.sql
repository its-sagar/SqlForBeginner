-- Which programmer has developed the highest number of packages

select pname, count(*)
from software
group by pname
having count(*)  = (select max(counts) from (
select count(*) as counts
from software
group by pname) as temp);