-- How many package were developed by the person studied in institute that charge rthe lowest course fee

SELECT COUNT(sw.title) AS package_count
FROM software AS sw
JOIN studies AS st ON sw.pname = st.pname
WHERE st.splace = (
    SELECT splace
    FROM studies
    ORDER BY ccost ASC
    LIMIT 1
);