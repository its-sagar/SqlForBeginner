--  In which year were the most number of programmer join

select year(doj) as year, count(*) as No_of_Programmer
from programmer
group by year
order by No_of_Programmer desc
limit 1;