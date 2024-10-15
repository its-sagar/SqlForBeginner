-- Who is the highest paid Cobol programmer

select * from programmer
where prof1 = 'COBOL' or prof2 = 'COBOL'
order by salary desc
limit 1;