-- Display the name of the institute and course which has below average course fee

select splace, course from studies
where ccost < ( select avg(ccost) from software);