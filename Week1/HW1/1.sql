SELECT COUNT(*) AS count_records
FROM
	(
		SELECT DATE(tpep_pickup_datetime) FROM public.yellow_taxi_trips WHERE DATE(tpep_pickup_datetime)='2021-01-15'
	) AS derivedTable;
