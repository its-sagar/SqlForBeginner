-- In which month did most number of programmer join

select month(doj) as month, count(*) as No_of_Programmer
from programmer
group by month
order by No_of_Programmer desc
limit 1;