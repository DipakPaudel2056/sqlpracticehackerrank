-- writing the program to find the nth highest salary from the given table which has name and id 
-- we can find this only using sorting and find the (n-1) item
SELECT
    Salary
from
    Employee
where
    Salary = (
        select
            salary
        from
            Employee
        where
            Salary < Max(Salary)
    )
ORDER BY
    Salary DESC
LIMIT
    1, N -1;

CREATE FUNCTION getNthHighestSalary (N INT) RETURNS INT BEGIN RETURN (
    WITH
        CTE AS (
            SELECT
                Salary,
                DENSE_RANK() OVER (
                    ORDER BY
                        Salary desc
                ) as RANK_DESC
            FROM
                Employee
        )
    SELECT DISTINCT
        Salary
    FROM
        CTE
    WHERE
        RANK_DESC = N
);

END