-- Display the LOWEST course fee.

select ccost as fee from studies
order by ccost
limit 1;