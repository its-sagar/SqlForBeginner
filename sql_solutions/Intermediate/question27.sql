--  Display the name of the package which have sold less than the average number of copies

select title, sold
from software
where sold < (select avg(sold) from software);