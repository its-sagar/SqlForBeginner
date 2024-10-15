-- Find out he NUMBER OF COPIES which should be sold in order to recover the DEVELOPMENT

select *, ceil(dcost/scost) as No_of_copies 
from software;