-- here the problem is asking us to find the latest login of the user in the year 2020
select
    user_id,
    MAX(time_stamp) AS last_stamp
from
    Logins
where
    YEAR (time_stamp) = 2020
group by
    user_id
order by
    last_stamp desc;