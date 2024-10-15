-- Who are the programmers who joined in the same day

select doj, group_concat(pname)
from programmer
group by doj
having count(pname) > 1;