-- Display the number of packages in each languages for which development cost is less than 1000

select dev_in, count(title) as No_of_package
from software
where dcost < 1000
group by dev_in;