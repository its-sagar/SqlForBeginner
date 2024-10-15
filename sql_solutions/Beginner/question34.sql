-- Display the sales cost of the packages developed by each programmer, languages wise.

SELECT pname, dev_in, SUM(scost) AS total_sales_cost
FROM software
GROUP BY pname, dev_in
order by dev_in;