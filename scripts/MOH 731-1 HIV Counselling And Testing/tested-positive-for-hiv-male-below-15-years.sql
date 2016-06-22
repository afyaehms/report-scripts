--get count, people that Tested postive for HIV under 5yrs
--substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON p.person_id=o.person_id

WHERE (concept_id=3110 OR concept_id=100126141)
AND value_coded = 782
AND p.birthdate IS NOT NULL 
AND FLOOR(DATEDIFF(CURDATE(),p.birthdate) / 365) &lt; 15
AND gender = 'M'
AND o.date_created BETWEEN '2016-06-01' AND '2016-06-30'
