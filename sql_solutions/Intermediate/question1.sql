-- Display the cost of the package developed by each programmer.

select pname , sum(dcost) as Total_Cost from software
group by pname;
