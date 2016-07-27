--get count of Clients given IPT 1st Dose
--substitute the begin and end dates with date placeholders
--State id for MALARIA PROPHYLAXIS 1PT1 is fixed at 25
SELECT count(*)
FROM patient_state
WHERE state = '25'
AND start_date BETWEEN '2012-06-01' and '2016-06-30'