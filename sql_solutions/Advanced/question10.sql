-- Display the details of the software that was developed in the language which is neither the first nor the second proficiency of the programmer

select * from programmer as p
join software as sw using(pname)
where p.prof1 != sw.dev_in and p.prof2 != sw.dev_in;