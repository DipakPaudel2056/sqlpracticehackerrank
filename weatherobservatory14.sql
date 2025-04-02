-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.
SELECT ROUND(LONG_W,4) FROM Station WHERE Lat_N<137.2345 ORDER BY LAT_N DESC Limit 1;



