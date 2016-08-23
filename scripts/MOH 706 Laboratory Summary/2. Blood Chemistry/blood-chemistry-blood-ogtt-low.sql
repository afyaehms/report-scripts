--OGGT represents Glucose Blood Tolerance (concept_id: 2404)
--It composes of 4 tests, and comment field field
--We are getting the value of the four test and ignoring the comment field (concept_id: 5128)
--The High and Low Limits are joined from the concept_numeric table
--All the four tests are group as 1 test and assumption made that if any of them is greater than it limit, then thats a positive as over
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM (
	SELECT o.obs_group_id
	FROM obs o

	INNER JOIN obs og 
	ON o.obs_group_id=og.obs_id AND og.concept_id=2404

	INNER JOIN concept_numeric cn
	ON o.concept_id=cn.concept_id

	WHERE DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'
	AND o.value_numeric < cn.low_normal

	GROUP BY o.obs_group_id
) AS grouped_test;