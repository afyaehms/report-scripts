-- get count of Cervical cancer clients screened for HPV test
-- substitute the dates with date placeholders
-- 100126199 - placeholder id for HPV TEST - to be replaced once included as an investigation

-- SELECT COUNT(*)
-- FROM obs o
-- INNER JOIN person p ON p.person_id=o.person_id
-- WHERE concept_id=100126199
-- AND o.date_created BETWEEN '2016-06-01' AND '2016-06-30'

SELECT COUNT(0) FROM obs o WHERE o.date_created BETWEEN '2016-06-01' AND '2016-06-30'