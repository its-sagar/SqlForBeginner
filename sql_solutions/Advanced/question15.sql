-- Who are the programmers who have the same prof2

select prof2 as Proficiency, group_concat(pname) as Name
from programmer
group by prof2
having count(pname) > 1;