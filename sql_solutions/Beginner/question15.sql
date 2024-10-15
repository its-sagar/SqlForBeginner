--  HOW MANY packages were developed in DBASE.

SELECT COUNT(*) AS total_packages
FROM software
WHERE dev_in = 'DBASE';