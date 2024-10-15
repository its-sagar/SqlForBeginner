-- Display the details of the software that was developed in the languages that is not the programmers’s first proficiency

select * from programmer as p
join software as sw using(pname)
where not(p.prof1= sw.dev_in);