--HB COunt other Techniques - n	A broad screening test to check for such disorders as anemia, infection, and many other
--  diseases. Includes white blood cell count, red blood cell count, hemoglobin, hematocrit,
-- indices (MCV, MCH, MCHC, RDW), and often includes platelet count.

SELECT *
FROM obs o
WHERE o.concept_id = 995
AND o.obs_group_id IS NULL
AND DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31';