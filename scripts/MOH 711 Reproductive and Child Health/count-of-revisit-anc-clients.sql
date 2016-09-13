--get count of MCH(ANC/PNC/CWC) clients with revisits
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=&gt;ANC, 2=>PNC, 3=>CWC
--visit type id 3 is for Return ANC Clinic Visit

SELECT count(*) from (
(SELECT v.patient_id, count(v.patient_id)
FROM visit v
INNER JOIN patient_program pp ON pp.patient_id = v.patient_id
AND pp.program_id = 1
AND v.visit_type_id = 3
AND v.date_started BETWEEN '2016-02-14' AND '2016-06-16'
GROUP BY patient_id
HAVING COUNT(v.patient_id) &gt;= 1) as patientvisits )