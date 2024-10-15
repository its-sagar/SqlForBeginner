--  Display the number of packages sold by each programmer

select pname, sum(sold) as No_of_package_sold from software
group by pname;