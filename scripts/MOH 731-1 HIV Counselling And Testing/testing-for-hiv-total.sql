--get count of the total HIV Tests conducted within the selected period
--substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE (concept_id=3110 OR concept_id=100126141)
AND date_created BETWEEN '2016-06-01' AND '2016-06-30'