-- find followers count, the given table has the user_id and the followers id and we need to find the followers count for each user id and order the table on the basis of user_id
select
    user_id,
    count(distinct follower_id) as followers_count
from
    Followers
group by
    user_id
order by
    user_id;