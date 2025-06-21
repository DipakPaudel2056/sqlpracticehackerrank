-- the goal here is to find the first login date from the database table we can use min functiton with date too
select player_id,min(event_date) as first_login
from Activity
group by player_id;