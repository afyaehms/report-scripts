--HEPATITIS A VIRUS IgM-This test detects serum IgM antibodies reactive to the Hepatitis A Virus.
-- or to determine if the vaccine against hepatitis B has produced the desired level of immunity.
-- Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id = 2587
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-30';