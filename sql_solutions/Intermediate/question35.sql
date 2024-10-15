--  In which language are most of the programmer proficient

select prof1, count(*) as No_of_Programmers  from programmer
group by prof1
union all
select prof2, count(*) as No_of_Programmers from programmer
group by prof2
order by No_of_Programmers desc
limit 1;