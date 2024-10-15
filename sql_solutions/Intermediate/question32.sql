-- Who is the oldest female programmer who joined in 1992

select pname, date_format(from_days(datediff(now(), dob)), '%y-%m-%d') as age
from programmer
where sex = 'F' and year(doj) = 1992
order by age desc
limit 1;