-- Display the names of the highest paid programmer for each language(prof1)

select * from programmer
where (prof1, salary) in (
	select prof1, max(salary) 
	from programmer 
	group by prof1);