-- HOW MANY programmers know either COBOL or PASCAL

select * from programmer
where prof1 = "PASCAL" or prof1 = "COBOL" or prof2 = "PASCAL" or prof2 = "COBOL";