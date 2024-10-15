-- Display the details of those who don’t know clipper , cobol and pascal.

select * from programmer
where prof1 not in ("clipper", "cobol", "pascal") and prof2 not in ("clipper", "cobol", "pascal");