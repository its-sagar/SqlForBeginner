--  How many male programmers are there.

select count(*) as No_of_male_programmers from programmer
where sex = 'M';