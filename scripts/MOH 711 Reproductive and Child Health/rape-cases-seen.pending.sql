-- get count rape cases seen


SELECT COUNT(0) FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod