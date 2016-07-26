--get count of Adolescents(10-14 years) presenting with pregnancy
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC)
--limit visit type to id 2  ==> 'Initial MCH Clinic Visit' for new enrolments only
--limit age range between 10 and 14

SELECT COUNT(*)
FROM visit v
INNER JOIN patient_program pp ON pp.patient_id = v.patient_id
INNER JOIN patient_search ps ON ps.patient_id = v.patient_id
AND pp.program_id = 1
AND v.visit_type_id = 2
AND ps.age BETWEEN 10 AND 14
AND v.date_started BETWEEN :startOfPeriod AND :endOfPeriod
