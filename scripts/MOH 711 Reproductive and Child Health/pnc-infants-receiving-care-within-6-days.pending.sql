-- get count of PNC Infants receiving postpartum care within 6 days


SELECT SUM(0) FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod