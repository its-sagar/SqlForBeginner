-- How many copies of the package that has the least difference between development and selling cost were sold

select dcost, scost, abs(dcost-scost), sold
from software
order by abs(dcost-scost);