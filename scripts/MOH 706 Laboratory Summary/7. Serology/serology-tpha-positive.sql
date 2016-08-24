--TPHA - The Syphilis TPHA test is an indirect hemagglutination assay used for the detection and titration of antibodies
--against the causative agent of syphilis, Treponema pallidum subspecies pallidum.
--Synonyms	:TPHA TEST, TREPONEMA PALLIDUM HAEMAGGLUTINATION TEST
--Substitute the dates with date placeholders
--Concept id: 2561
--Concept REACTIVE id: 850

SELECT COUNT(*)
FROM obs
WHERE concept_id = 2561
AND value_coded = 850
AND DATE(obs_datetime) BETWEEN '2016-08-01' AND '2016-08-31';