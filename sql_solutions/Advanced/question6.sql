-- Display the number of packages , number of copies sold and sales values of each programmer, institute wise

select p.pname as name,
s.splace as institution,
sum(sold) as No_of_copies_sold,
sum(scost * sold) as sales_value
from software as p
join studies as s
on s.pname = p.pname
group by institution, name;