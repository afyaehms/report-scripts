-- get count rape cases seen within 72 hours


SELECT SUM(0) FROM obs WHERE obs.obs_datetime BETWEEN :startOfPeriod AND :endOfPeriod