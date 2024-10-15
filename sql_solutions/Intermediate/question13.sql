-- Which is the costliest course

select course, ccost
from studies
order by ccost desc
limit 1;