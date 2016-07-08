-- PAP TEST - A test for cancer, especially of the female genital tract, in which a smear of exfoliated cells is specially
-- stained and examined under a microscope for pathological changes. Also called Pap test
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2222
AND ob.concept_id = 5655
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'