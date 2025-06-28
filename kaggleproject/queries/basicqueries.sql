select
    *
from
    dailyactivity
limit
    10;

select
    *
from
    heartrate
limit
    10;

select
    *
from
    hourlyintensities
limit
    10;

select
    *
from
    sleepday;

-- from sleep table 
-- let's remove the duplicate data
SELECT
    count(*)
FROM
    sleepday;

-- to remove the duplicate data
CREATE temporary table sleepday_temp as
select distinct
    *
from
    sleepday;

truncate table sleepday;

insert into
    sleepday
select
    *
from
    sleepday_temp;

drop table sleepday_temp;

-- how many time they have slept 3 times
select
    *
from
    sleepday;

select
    count(*) * 100 / (
        select
            count(*)
        from
            sleepday
    ) as slept_3times_percentage
from
    sleepday
where
    totalsleeprecords = 3;

-- we have seen that the user has spent more time in bed. let's see in average how many minutes s/he will be in their phone before going to sleep
select
    id,
    avg(totaltimeinbed - totalminutesasleep) as avg_mbltime
from
    sleepday
group by
    id
order by
    avg_mbltime desc;

-- from this we have found that the one user in average using his phone 5 hours a day in his bed however other user in average are taking 40 minutes to fall asleep
select
    id,
    avg(totalminutesasleep) as avg_sleep
from
    sleepday
group by
    id
order by
    avg_sleep;

select
    avg(totalminutesasleep)
from
    sleepday
where
    id = 1844505072;

-- let's change the varchar date into something usefull to get the insight if the users are sleeping more during the weekends or weekdays if there is any or let's say which day they sleep the most 
select
    sleepday,
    avg(totalminutesasleep) as avg_sleep,
    weekday (str_to_date (sleepday, '%c/%e/%Y %H:%i')) as 'day'
from
    sleepday
group by
    sleepday,
    'day';

-- as expected the users were sleeping more during the weekends then the weekdays