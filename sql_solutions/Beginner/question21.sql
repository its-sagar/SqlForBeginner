-- HOW MANY programmers DON’T know PASCAL & C

select count(*) as No_of_Programmer from programmer
where prof1 != "PASCAL" and prof1 != "C" and prof2 != "PASCAL" and prof2 != "C";