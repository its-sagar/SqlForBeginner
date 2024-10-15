-- In which institution does the person who developed the costliest package study

select st.splace
from studies as st
join software as sw using(pname)
order by sw.scost desc
limit 1;