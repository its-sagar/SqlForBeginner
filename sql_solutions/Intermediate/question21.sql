-- Which language was used to develop the package which has the highest sales amount

select dev_in, sold
 from software
order by sold desc
limit 1;