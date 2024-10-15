--  Display the number of packages in each languages, except c and c++

select dev_in, count(title)
from software
where dev_in != 'C' and dev_in != "C++"
group by dev_in;