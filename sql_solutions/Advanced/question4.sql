-- Display the details of those programmers who joined before 1990

select * from programmer
where year(doj) < 1990;