-- Display the total sales value of software institute wise

select st.splace, sum(scost*sold) as Total_sales_value from software as sw
join studies as st using(pname)
group by st.splace;