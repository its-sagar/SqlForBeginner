-- Display the sales values of the packages developed by the each programmer

select pname , sum(scost*sold) as Total_Cost from software
group by pname;
