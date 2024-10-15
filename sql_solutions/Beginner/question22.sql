-- HOW old is the OLDEST male programmer

select date_format(from_days(datediff(now(), dob)), '%y') as Age_of_Oldest_Male_programmer from programmer
where sex = 'M'
order by Age_of_oldest_Male_programmer desc
limit 1;