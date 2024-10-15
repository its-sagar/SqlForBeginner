--  Display the average difference between scost and dcost for each language

select dev_in, avg(dcost-scost) as Avg_diff
from software
group by dev_in;