-- write the program to find the employee_id that is missing values either name form employees table or salary from the salary table
select
    e.employee_id
from
    (
        select
            *
        from
            employees
        union all
        select
            *
        from
            salaries
    ) as e
GROUP BY
    e.employee_id
having
    count(e.employee_id) = 1
ORDER BY
    e.employee_id asc;