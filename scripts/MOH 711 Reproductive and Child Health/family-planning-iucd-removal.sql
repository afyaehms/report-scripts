-- IUCD removals
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id = 374
AND o.value_coded = 4626
AND o.obs_datetime BETWEEN '2016-01-01' AND '2016-06-30'


