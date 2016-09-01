select count(person_id)
from
(
select o.person_id, date_format(obs_datetime, '%d-%m-%Y') obs_date
from obs o
inner join person p on p.person_id = o.person_id
WHERE o.voided = 0
AND
  (o.concept_id = 5109 or o.concept_id = 2304 or o.concept_id = 160249)
AND DATE(o.obs_datetime) BETWEEN :startOfPeriod AND :endOfPeriod
AND o.value_coded NOT IN (962,1003,1004,1215,1678,4029,4421,5018,148023,
  1228,4371,4131,4056,4034,1081,1228,117889,996,997,998,1175,998,4545,
  121629,999,1000,1281,1926,4067,4081,4272,4463,4464,121372,121375,4574,
  1104,117152,1001065,4576,4011,116543,4593,1755,1182,1449,1097,1753,1754,
  4062,113230,1157,1146,892,1082, 122604,4575,160154,160155,160152,
  160150,160148,116128,4516,4515,4492,4055,4314,4293,4290,4267,705,
  4055,4054,4041,4027,2088,1041,708,1025,1201,4571,1778,1774,126208,
  1231,1341,1376,4211,4278,4334,1296,1334,1449,1715,1745,1773,2350,
  2351,3811,3864,129566,1048,1531,1533,1599,1610,1620,2755,3113,4362,
  4451,119558,119558,1044,1534,1602,1646,160139,1198,1199,1642,4541,
  1643,1663,4174,1595,1597,1598,1100,1413,1414,1846,2107,2537,119481,
  142473,1155,1825,1828,1934,1138,4949,137293,150555,512,160161,137293,
  4058,4374,4499,100001513,1825,1437,1127,1856,3664,1144,1050,1339,1460,
  1515,1158,1130,1355,117543,117829,138706,1068,3653,4578,138868,2450,
  1003,3667,1668,5202,1137,1345,1820,1822,1823,2116,4113,4115,4119,4122,
  4152,4154,4155,4156,4157,4160,4266,4295,4320,4343,4345,4402,4563,4917,
  4918,4919,4920,4563,119240,1064,1928,4404,1064,4579,155,1038,1152,4035,
  127990,1005,1006,1007,1008,1505,1506,1746,1747,1748,2524,2525,2526,
  2527,2528,2587,4436,145131,160143,199,1083,4038,116700,4496,3666,4548,
  3664,1022,1846,4333,160180,160205,1020,1744,4458,5529,134561,100001518,
  2044,1845,3659,3660,4586,134337,160200,1096,1114,4564,160197,1111,1104,
  4507,113155,11935,1915,1360,1136,113881,1021,124954,1519,1148,1069,1241,
  1261,2498,4448,4518,119112,4558,1160,1211,1722,1843,3670,4270,1088,4547,
  206,143388,1349,1928,4102,2177,1168,3671,1857,4400,4440,160204,1421,
  1425,2471,4049,4125,4139,4457,4528,112198,119222,1289,1043,1061,1077,
  1084,1265,1267,1452,1767,1770,2341,2343,3896,112561,125343,125379,
  158995,160175,1490,160186,160187,160188,1019,1167,1179,1723,3670,5233,
  115835,1709,1011,1080,1113,1141,1285,1796,1866,4159,4291,4372,4503,
  5194,5200,114100,1026,4014,4520,4583,1106,1524,1938,1029,1195,1194,
  1001066,4235,1393,160149,160151,160153,4027,602,1034,1193,1216,2438,
  2490,1216,4153,4238,4248,149496,4550,4551,4553,572,1010,1163,1213,1245,
  1470,1525,1527,1707,1708,1752,2345,3860,4059,4060,4061,4148,4298,4316,
  4425,4592,152306,160156,4047,4542,1666,1056,143264,1243,1441,100001139,
  1234,1302,1347,1017,2522,4069,4292,4297,4337,4443,111633,111636,139502,
  111633,4289,1724,4577,3671,3668,1018,1149,1473,1051,1040,972,1058,1042,
  1423,1429,1280,4290,1073,112992,160202,1099,1147,124954,1521,1712,
  1502,#general examination
  1165,1078,1154,3761,4190,4253,113087,140987,1015,1214,1309,1310,1312,1313,
  1314,1398,4053,4375,100126127,1268,1269,1270,1271,1086,592,4045,4535,1110,
  1156,1324,3874,4357,4452,3348,3794,3796,4191,1024,1365,1679,1680,1681,1682,
  1683,1687,1689,1697,1698,1701,1703,1705,1808,1848,1849,1850,2432,2456,4192,
  4322,4352,100001692,1014,1292,1411,1299,1294,2436,1016,1102,1319,1276,1405,
  1444,1001284,1151,1919,2492,4589,160210,123620,113279,130,1047,2522,120194,
  1177,114413,1388,1173,1433,4280,4498,1039,1162,4086,4347,1001,1227,4026,
  4037,#bodily assult
  1890,1353,4462,1804,1176,1037,160158,2344,100126201,1125,1286
)
AND EXTRACT(YEAR FROM (FROM_DAYS(DATEDIFF(NOW(),p.birthdate)))) &gt; 5
group by o.person_id, obs_date

) all_other_diseases
