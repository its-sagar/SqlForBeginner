-- Which language was used to develop the most number of packages

select dev_in , count(*) as No_of_package
from software
group by dev_in
having No_of_package = (
	select max(counts) from (
		select count(*) as counts 
		from software 
		group by dev_in) as temp);