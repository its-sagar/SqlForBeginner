-- Which package has the lowest selling cost

select title, scost
from software
order by scost
limit 1;