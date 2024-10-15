-- Which language has been seated as prof1 by the most of the programmers

select prof1, count(*) as No_of_Programmer
from programmer
group by prof1
order by No_of_Programmer desc
limit 1;