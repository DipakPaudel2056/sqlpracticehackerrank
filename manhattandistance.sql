-- Consider   and  to be two points on a 2D plane.

--  happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the minimum value in Western Longitude (LONG_W in STATION).
--  happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.
SELECT  ROUND((MAX(LAT_N) -MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)),4) FROM STATION; 


-- EUCLIDEAN DISTANCE

SELECT ROUND(SQRT(POWER((MIN(LAT_N) - MAX(LAT_N)),2) + POWER((MIN(LONG_W) - MAX(LONG_W)),2)),4) FROM STATION;