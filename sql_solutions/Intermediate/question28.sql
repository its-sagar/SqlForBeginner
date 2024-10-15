--  Who are the authors of the packages which have recovered more than double the development cost

select pname
from software
where 2*dcost < scost*sold;