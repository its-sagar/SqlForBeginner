-- Which institute conducts the costliest course

select splace, course, ccost
from studies
order by ccost desc
limit 1;
