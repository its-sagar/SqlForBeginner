--  Display the programmer names and the cheapest package developed by them in each languages

select pname, dev_in, dcost
from software
where (dev_in, dcost) in (select dev_in, min(dcost) from software group by dev_in);