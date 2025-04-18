

-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.
SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;



-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.
SELECT ROUND(MIN(LAT_N),4) FROM STATION WHERE LAT_N > 38.7780;