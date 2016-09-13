#PNC Cervical Cancer screening suspect results
#substitute the dates with date placeholders
#100126199 - placeholder id for HPV TEST - to be replaced once included as an investigation

SELECT COUNT(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.patient_id
WHERE o.concept_id=100126199
AND o.value_coded=803
AND o.obs_datetime BETWEEN '2016-06-01' AND '2016-06-30'
