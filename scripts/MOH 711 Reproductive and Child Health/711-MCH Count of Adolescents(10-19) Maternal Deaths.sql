--get count of Adolescents(10-19 years) maternal deaths
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC)
--limit visit type to id 2  ==> 'Initial MCH Clinic Visit' for new enrolments only
--limit age range between 10 and 19
SELECT COUNT(*)
FROM visit v
INNER JOIN patient_program pp ON pp.patient_id = v.patient_id
INNER JOIN patient_search ps ON ps.patient_id = v.patient_id
AND pp.program_id = 3
AND v.visit_type_id = 2
AND ps.age BETWEEN 10 AND 19
AND v.date_started BETWEEN '2016-02-14' AND '2016-06-16'