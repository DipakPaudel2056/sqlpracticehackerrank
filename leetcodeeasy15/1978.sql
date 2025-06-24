-- here we are trying to find the employee whos income is less than 3000 and whose managers are not in the company
SELECT
    E.employee_id
FROM
    Employees E
    LEFT JOIN Employees M ON M.employee_id = E.manager_id
WHERE
    E.salary < 30000
    AND M.employee_id IS NULL
    AND E.manager_id IS NOT NULL
ORDER BY
    employee_id;