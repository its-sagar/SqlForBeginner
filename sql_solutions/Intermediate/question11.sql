-- Which course has been done by the most of the students

select course, count(*) as No_of_students
from studies
group by course
order by No_of_students desc
limit 1;