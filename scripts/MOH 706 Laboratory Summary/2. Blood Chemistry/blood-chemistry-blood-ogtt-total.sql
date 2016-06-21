--OGGT represents Glucose Blood Tolerance (concept_id: 2404)
--It composes of 4 tests, and comment field field
--All the four tests are group as 1 test and assumption made that it's one test
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM(
	SELECT obs.encounter_id

	FROM obs
	INNER JOIN orders o 
	ON obs.order_id=o.order_id
	AND o.concept_id=2404
	
	GROUP BY obs.encounter_id
) AS oggt_total