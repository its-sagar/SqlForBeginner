-- Display the detail of software developed by the male programmers born in 1965 and female programmers after 1975

select * from programmer as p
join software as s using(pname)
where (sex = 'M' and year(dob) = 1965) or (sex = 'F' and year(dob) > 1975);