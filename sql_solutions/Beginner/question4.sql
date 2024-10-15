--  What is the HIGHEST number of copies sold by a package

select * from software
order by sold DESC
limit 1;