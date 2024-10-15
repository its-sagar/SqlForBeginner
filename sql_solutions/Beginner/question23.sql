-- What is the AVERAGE age of female Programmers.

select avg(date_format(from_days(datediff(now(), dob)), '%y')) as Avg_age from programmer
where sex = 'F';
