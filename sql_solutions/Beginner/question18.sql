-- What is the Average course fee.

select sum(ccost)/count(*) as Avg_course_fee from studies;