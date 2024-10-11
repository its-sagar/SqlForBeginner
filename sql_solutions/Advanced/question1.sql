--  Who is the highest paid C programmer

select * from programmer
where prof1 = 'c' or prof2 = 'c'
order by salary desc
limit 1;