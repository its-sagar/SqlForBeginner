-- Who is the youngest male programmer born in 1965

select pname, date_format(from_days(datediff(now(), dob)), '%y-%m-%d') as age 
from programmer
where year(dob) = 1965
order by age
limit 1;