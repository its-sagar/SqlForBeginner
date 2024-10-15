-- Display the details of the packages developed in pascal by female programmers

select * from software
where dev_in = 'PASCAL' and pname in (select pname from programmer where sex = 'F');