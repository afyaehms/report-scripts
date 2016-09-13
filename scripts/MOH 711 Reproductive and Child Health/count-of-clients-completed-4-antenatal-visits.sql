-- get count of MCH(ANC/PNC/CWC) clients with 4 or more antenatal visits
-- substitute the dates with date placeholders
-- substitute the program_id with the appropriate program id(1=&gt;ANC, 2=>PNC, 3=>CWC
SELECT count(*) from (
(SELECT v.patient_id, count(v.patient_id)
FROM visit v
INNER JOIN patient_program pp ON pp.patient_id = v.patient_id
AND pp.program_id = 1
AND (
    pp.date_completed IS NULL OR (pp.date_completed &gt; '2016-02-14' AND '2016-06-16')
    AND
    pp.date_enrolled &gt;= DATE_ADD('2016-02-14', INTERVAL -11 MONTH))
AND v.date_started BETWEEN '2016-02-14' AND '2016-06-16'
GROUP BY patient_id
HAVING COUNT(v.patient_id) &gt;= 4) as patientvisits )