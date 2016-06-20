--get COUNT of MCH(ANC/PNC/CWC) clients WITH 4 OR more antenatal visits
--substitute the dates WITH DATE placeholders
--substitute the program_id WITH the appropriate program id(1=>ANC, 2=>PNC, 3=>CWC
SELECT COUNT(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id 
WHERE  o.concept_id =5089 AND value_numeric < 2.5
AND pp.program_id = 3
AND o.date_created BETWEEN '2016-06-14' AND '2016-06-15'