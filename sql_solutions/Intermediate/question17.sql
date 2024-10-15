-- Display the name of the courses whose fees are within 1000 (+or-) of the average fee

select course
from studies
where ccost between (select avg(ccost) - 1000 from studies) and (select avg(ccost) + 1000 from studies);