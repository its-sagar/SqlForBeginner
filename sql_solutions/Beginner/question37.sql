-- Display each institute namewith the number of courses, average cost per course.

select splace, count(course) as No_of_courses, avg(ccost) as avg_cost
from studies
group by splace;