-- Which institute has the most number of students

select splace, count(*) as No_of_students
from studies
group by splace
order by No_of_students  desc
limit 1;