--HEPATITIS B SURFACE ANTIGEN TEST-HbSAg is done detect, diagnose, and/or follow the course of an infection with hepatitis B virus (HBV)
-- or to determine if the vaccine against hepatitis B has produced the desired level of immunity.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
INNER JOIN obs ob ON o.obs_id=ob.obs_group_id
AND o.concept_id = 3693
AND ob.concept_id = 5139
WHERE DATE(o.obs_datetime) BETWEEN '2016-07-01' AND '2016-07-31'