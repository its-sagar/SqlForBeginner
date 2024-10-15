-- Display the details of the software developed in c by female programmers of PRAGATHI

select * from software
where dev_in = 'c' and pname in (
select p.pname from programmer
as p
join studies as s
on p.pname = s.pname
where s.splace = 'PRAGATHI' and p.sex = 'F');