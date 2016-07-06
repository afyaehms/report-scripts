--OGGT represents Glucose Blood Tolerance (concept_id: 2404)
--It composes of 4 tests, and comment field field
--We are getting the value of the four test and ignoring the comment field (concept_id: 5128)
--The High and Low Limits are joined from the concept_numeric table
--All the four tests are group as 1 test and assumption made that if any of them is greater than it limit, then thats a positive as over
--Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM(
	SELECT obs.encounter_id,
	obs.person_id

	FROM obs
	INNER JOIN orders o 
	ON obs.order_id=o.order_id
	AND o.concept_id=2404

	LEFT OUTER JOIN concept_numeric c
	ON obs.concept_id = c.concept_id

	WHERE obs.concept_id IS NOT 5128
	AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-31'


	GROUP BY obs.person_id, obs.encounter_id
	HAVING MAX(CASE WHEN value_numeric<=low_normal THEN 1 ELSE 0 END)=1
) AS oggt_low