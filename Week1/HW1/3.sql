SELECT COUNT(a."DOLocationID") AS dest_counts, b."Zone"
FROM public.yellow_taxi_trips a
JOIN public.zones b
ON a."DOLocationID"=b."LocationID"
GROUP BY DATE(a.tpep_pickup_datetime), b."Zone"
HAVING DATE(a.tpep_pickup_datetime)='2021-01-14'
ORDER BY dest_counts
DESC;
