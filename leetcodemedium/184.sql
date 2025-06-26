-- find the highest score by department 
-- APPROACT 1: is to join two tables and query the department id and the max salary in the subquery
SELECT
    D.name as Department,
    E.name as Employee,
    E.salary as Salary
From
    Employee E
    Join Department D on E.departmentId = D.id
where
    (E.salary, E.departmentid) IN (
        SELECT
            MAX(Salary),
            departmentId
        FROM
            Employee
        GROUP BY
            departmentId
    )
    -- APPROACH 2 using windows function 
WITH
    ranked AS (
        SELECT
            d.name AS Department,
            e.name AS Employee,
            e.salary AS Salary,
            RANK() OVER (
                PARTITION BY
                    e.departmentId
                ORDER BY
                    e.salary DESC
            ) AS ranking
        FROM
            Employee e
            LEFT JOIN Department d ON e.departmentId = d.id
    )
SELECT
    Department,
    Employee,
    Salary
FROM
    ranked
WHERE
    ranking = 1