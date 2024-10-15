--  WHO are the Programmers who celebrate their BIRTHDAY’S during the CURRENT MONTH.

select * from programmer
where month(dob) = month(curdate());