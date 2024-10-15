--  Which course has below average number of students

select course, count(pname) as No_of_students
from studies
group by course
having no_of_students < (select count(pname)/count(distinct(course)) from studies);