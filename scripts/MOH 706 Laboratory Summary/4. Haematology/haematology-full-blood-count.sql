--COMPLETE BLOOD COUNT - n	A broad screening test to check for such disorders as anemia, infection, and many other
--  diseases. Includes white blood cell count, red blood cell count, hemoglobin, hematocrit,
-- indices (MCV, MCH, MCHC, RDW), and often includes platelet count.

SELECT COUNT(*)
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 2410
AND ob.concept_id = 995
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'