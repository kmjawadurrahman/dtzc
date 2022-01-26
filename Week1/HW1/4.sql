SELECT CONCAT(b."Zone", ' / ', c."Zone")  AS pickup_dropoff, AVG(a.total_amount) AS avg_price
FROM public.yellow_taxi_trips a
JOIN public.zones b
	ON a."PULocationID"=b."LocationID"
JOIN public.zones c
	ON a."DOLocationID"=c."LocationID"
GROUP BY total_amount, b."Zone", c."Zone"
ORDER BY avg_price
DESC;
