-- Which is the costliest package developed in pascal

select title, dev_in, dcost
from software
where dev_in = 'PASCAL'
order by dcost desc
limit 1;