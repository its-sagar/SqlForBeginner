-- Display each institute name with number of students

select splace, count(pname) as No_of_students
from studies
group by splace;