-- Display the details of packages for WHICH developments cost has been recovered

select * from software
where (scost*sold) > dcost;