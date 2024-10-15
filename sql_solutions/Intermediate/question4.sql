-- Who is the least experienced programmer

select *, date_format(from_days(datediff(now(),doj)), '%y-%m-%d') as exprience 
from programmer 
order by exprience
limit 1;
