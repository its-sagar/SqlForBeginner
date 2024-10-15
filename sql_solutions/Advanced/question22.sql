--  What is the average salary for those whose software’s sales value is more than 50000

select avg(p.salary) from programmer as p
join software as sw using(pname)
where (sw.scost*sw.sold) > 50000;