--get count of LLITNS distributed to CWC clients under 1 year
--substitute the dates with date placeholders
--substitute the program_id with the appropriate program id(1=>ANC, 2=>PNC, 3=>CWC
--concept id for LLITNS is 160428
--concept uuid for YES is 4536f271-5430-4345-b5f7-37ca4cfe1553
--concept uuid for NO is '606720bb-4a7a-4c4c-b3b5-9a8e910758c9'
--age test is for age 1 and below
SELECT count(*)
FROM obs o
INNER JOIN patient_program pp ON pp.patient_id = o.person_id
INNER JOIN patient_search ps ON ps.patient_id = o.person_id
WHERE o.concept_id = 160428 AND o.value_text = '4536f271-5430-4345-b5f7-37ca4cfe1553'
AND pp.program_id = 3
AND ps.age &le; 1
AND o.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod