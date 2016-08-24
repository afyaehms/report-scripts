-- PAP TEST (concept_id: 2222)
-- This is a method for Cervical Screening (concept_id: 100126138)
-- Return Where Cervical Cancer Screening method was Paps
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id = 100126138 AND o.value_coded=2222
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';