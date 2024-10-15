-- Which package has the highest development cost

select title, dcost from software
order by dcost desc
limit 1;