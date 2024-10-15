-- Who is the youngest programmer knowing dbase

select *, date_format(from_days(datediff(now(), dob)), '%y-%m-%d') as age
from programmer
where prof1 = 'DBASE' or prof2 = 'DBASE'
order by age
limit 1;