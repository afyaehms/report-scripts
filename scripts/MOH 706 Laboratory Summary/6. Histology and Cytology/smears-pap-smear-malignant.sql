-- PAP TEST (concept_id: 2222)
-- This is a method for Cervical Screening (concept_id: 100126138)
-- Return Where Cervical Cancer Screening method was Paps
-- Return also the Result of the screening as Positive, and group with the Method to get the count
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs o
WHERE o.concept_id = 100126138 AND o.value_coded=2222
AND obs_group_id IN (
	SELECT o.obs_group_id
	FROM obs o
	INNER JOIN obs ob ON o.obs_group_id=ob.obs_id AND ob.concept_id=100126139
	WHERE o.concept_id=5655 AND o.value_coded=782
	AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'
)
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';
