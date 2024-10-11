-- Find out the selling cost average for packages developed in PASCAL.
select dev_in, avg(scost) from software
where dev_in = "pascal"
group by dev_in;
