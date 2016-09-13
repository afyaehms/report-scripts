#get count of Cervical cancer clients screened for HPV test
#substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
INNER JOIN person p ON p.person_id=o.person_id
WHERE concept_id=100126138
AND value_coded = 1858
AND p.birthdate IS NOT NULL
AND FLOOR(DATEDIFF(CURDATE(),p.birthdate) / 365) &gt;= 50
AND o.date_created BETWEEN '2016-06-01' AND '2016-06-30'
