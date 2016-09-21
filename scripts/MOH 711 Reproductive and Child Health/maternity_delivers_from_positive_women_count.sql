#Count of deliveries from HIV positive women
SELECT COUNT(*) FROM
obs
WHERE
concept_id = 3310
AND value_coded = 782
AND encounter_id IN
(
  SELECT encounter_id FROM
  encounter 
  WHERE encounter_type = 27
);
