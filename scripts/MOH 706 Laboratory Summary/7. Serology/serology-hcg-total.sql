--URINE FOR HCG - This type of human chorionic gonadotropin (HCG) test measures the specific level of HCG in the
--urine. HCG is a hormone produced during pregnancy. Thus, this test attempts to determine whether a woman is pregnant.
--Substitute the dates with date placeholders

SELECT COUNT(*)
FROM obs
WHERE obs.concept_id = 2523
AND DATE(obs_datetime) BETWEEN '2016-01-01' AND '2016-06-30';