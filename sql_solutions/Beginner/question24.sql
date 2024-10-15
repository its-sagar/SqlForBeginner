-- CALCULATE the experience in Years for each programmers and display along with the names, in DESCENDING order.

select pnmae, date_format(from_days(datediff(now(), doj)), '%y') as Experience from programmer
order by Experience desc;