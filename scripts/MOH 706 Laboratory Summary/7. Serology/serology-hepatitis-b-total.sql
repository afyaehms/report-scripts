--HEPATITIS B SURFACE ANTIGEN TEST-HbSAg is done detect, diagnose, and/or follow the course of an infection with hepatitis B virus (HBV)
-- or to determine if the vaccine against hepatitis B has produced the desired level of immunity.
-- Substitute the dates with date placeholders

SELECT COUNT(*) 
FROM obs o
WHERE o.concept_id = 3693
AND DATE(o.obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31'