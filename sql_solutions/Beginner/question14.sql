-- What is the price of the costliest software developed in BASIC.

select dcost
from software
where dev_in = "basic"
order by dcost desc
limit 1;