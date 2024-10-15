-- How many people draw 2000 to 4000.

select count(*) as No_of_Programmer from programmer
where salary between 2000 and 4000;