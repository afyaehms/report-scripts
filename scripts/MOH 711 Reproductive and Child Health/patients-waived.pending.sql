-- get count of patients waived

SELECT 0 FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod