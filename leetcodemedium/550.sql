-- game play analysis IV
-- in this question we have to find the fraction of the player who logged in consecutively after first login
-- APPROACH-1 : IS TO SIMPLY USE WHERE CLAUSE
SELECT
    ROUND(
        COUNT(A1.player_id) / (
            SELECT
                COUNT(DISTINCT A3.player_id)
            FROM
                Activity A3
        ),
        2
    ) AS fraction
FROM
    Activity A1
WHERE
    (
        A1.player_id,
        DATE_SUB (A1.event_date, INTERVAL 1 DAY)
    ) IN (
        SELECT
            A2.player_id,
            MIN(A2.event_date)
        FROM
            Activity A2
        GROUP BY
            A2.player_id
    )


-- INSTEAD OF SUBQUERIES WE CAN USE CTEs
-- 1. identify the first login date for each player
-- 2. identify the number of players who logged in the day after their first login date
-- 3. divide the number of players identified in step 2 by the number of players identified in step 1 and round the result to two decimal places.