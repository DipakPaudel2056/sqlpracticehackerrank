-- in this example we are given the table with the emp_id, day, in time and the outtime 
-- we are trying to find total time spent by each employee on each day 
select
    event_day as day,
    emp_id,
    SUM(out_time - in_time) as total_time
from
    Employees
GROUP BY
    day,
    emp_id
ORDER BY
    day;