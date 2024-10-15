-- HOW MANY programmers paid 5000 to 10000 for their course

select count(*) as No_of_programmers from studies
where ccost between 5000 and 10000;