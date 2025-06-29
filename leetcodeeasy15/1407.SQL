-- given 2 tables for distance and users find the traveller who has travelled the most
SELECT u.name , IFNULL(SUM(r.distance) , 0) as travelled_distance 
FROM Users u
LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY travelled_distance DESC , u.name;