SELECT DATE(tpep_pickup_datetime), MAX(tip_amount) AS max_daily_tips
FROM public.yellow_taxi_trips
GROUP BY DATE(tpep_pickup_datetime)
ORDER BY max_daily_tips
DESC;
