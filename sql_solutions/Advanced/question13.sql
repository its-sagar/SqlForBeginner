-- What is the total cost of the software developed by the programmers by apple

select pname, splace, sum(dcost) as Development_cost
from studies as st
join software as sw using(pname)
where st.splace = 'apple'
group by pname, splace;