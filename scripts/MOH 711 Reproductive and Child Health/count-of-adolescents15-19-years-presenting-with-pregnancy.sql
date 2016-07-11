--get count of Adolescents(10-14 years) presenting with pregnancy
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC)
--limit visit type to id 2  ==> 'Initial MCH Clinic Visit' for new enrolments only
--limit age range between 15 and 19

SELECT Count(*) FROM (
SELECT DISTINCT q.person_id, DATEDIFF('2016-07-31',p.birthdate) / 365 age
FROM (
    SELECT DISTINCT o.person_id, DATE(o.obs_datetime) o_date
    FROM obs o
    WHERE o.concept_id = 3057
    AND o.value_coded = 782

    UNION ALL

    SELECT v.patient_id, v.date_started
    FROM visit v
    INNER JOIN patient_program pp ON pp.patient_id = v.patient_id
    AND pp.program_id = 1
    WHERE v.visit_type_id = 2
) AS q
INNER JOIN person p ON q.person_id=p.person_id
AND o_date BETWEEN '2016-06-01' AND '2016-07-31'
) preg
WHERE age BETWEEN 15 AND 19