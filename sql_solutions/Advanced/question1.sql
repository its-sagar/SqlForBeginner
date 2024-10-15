-- Display the details of those who are drawing the same salary

select * from programmer
where salary in ( select salary from programmer
group by salary
having count(*) > 1)
order by salary;