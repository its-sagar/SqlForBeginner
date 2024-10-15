-- Who is the most experienced male programmer knowing pascal

select *, date_format(from_days(datediff(now(),doj)), '%y-%m-%d') as exprience 
from programmer
where sex = 'M' and prof1 = 'PASCAL' or prof2 = 'PASCAL'
order by exprience desc
limit 1;