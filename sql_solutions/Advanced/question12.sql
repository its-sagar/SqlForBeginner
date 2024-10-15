-- Display the names of programmers who have not developed by the male students of sabhari

select *
from programmer as p
join studies as st using(pname)
join software as sw using(pname)
where not(p.sex = 'M' and st.splace = 'sabhari');