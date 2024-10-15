-- Display each languages with average development cost, average selling cost and average price per copy.

select dev_in, 
avg(dcost) as Avg_dev_cost, 
avg(scost) as Avg_sale_cost, 
sum(scost*sold)/sum(sold) as Avg_price_per_copy
from software
group by dev_in;