--  Which language listed in prof1 and prof2 has not been used to develop any package

select t.proficiency from
(select prof1 as proficiency
from programmer
union
select prof2 as proficiency
from programmer
order by proficiency) as t
left join software as sw
on t.proficiency = sw.dev_in
where pname is null;