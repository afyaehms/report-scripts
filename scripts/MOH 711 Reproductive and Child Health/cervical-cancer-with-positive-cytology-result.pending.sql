-- get count of cervical cancer clients with positive cytology result


SELECT 0 FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod