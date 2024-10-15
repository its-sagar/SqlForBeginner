-- Who developed the package that has sold the least number of copies

select * from software
order by sold
limit 1;