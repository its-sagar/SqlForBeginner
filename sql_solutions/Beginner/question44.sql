--  Display the total cost, dcost and amount to be recovered for each programmer for those whose dcost has not yet been recovered

select pname, 
sum(dcost) as Total_dev_Cost, 
sum(scost) as Total_sale_cost, 
sum(scost*sold) as Amount_recoverd,
sum(dcost)-sum(scost*sold) as Amount_to_be_recover
from software
group by pname
having sum(dcost) > sum(scost*sold);
