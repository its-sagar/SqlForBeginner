-- How many months will it take for each programmer to recover the cost of the course uderwent

select p.pname, st.course, ceil(st.ccost/p.salary) from programmer as p
join studies as st using(pname);