-- How many packages were developed by the most experienced programmer from BDPS

select count(*) as No_of_Packages from software 
where pname in (
select pname from programmer
join studies
using(pname)
where studies.splace = 'BDPS'
order by programmer.doj
);