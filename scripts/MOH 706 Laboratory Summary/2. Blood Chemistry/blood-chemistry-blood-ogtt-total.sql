-- OGGT represents Glucose Blood Tolerance (concept_id: 2404)
-- It composes of 4 tests, and comment field field
-- All the four tests are group as 1 test and assumption made that it's one test
-- To get the count, just get the grouping test that groups them
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id=2404
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';