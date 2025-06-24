-- here we are trying to find the employee_id and their primary department form the table which has the column, employee_id, department_id and primary_flag
select distinct
    employee_id,
    department_id
from
    employee
where
    employee_id in (
        select
            employee_id
        from
            employee
        group by
            employee_id
        having
            count(*) = 1
    )
    or primary_flag = 'Y'
order by
    employee_id