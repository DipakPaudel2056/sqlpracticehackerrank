-- the problem statement is to find the second highest salary from the given table which has name and the salary 
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | salary      | int  |
-- +-------------+------+
-- id is the primary key (column with unique values) for this table.
-- Each row of this table contains information about the salary of an employee.
-- Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).
-- The result format is in the following example.
-- approach-1
-- this is my brute force approach, sort the data in desc and exclude the top one
SELECT
    (
        SELECT DISTINCT
            salary
        FROM
            Employee
        ORDER BY
            Salary DESC
        LIMIT
            1, 1
    )
from
    Employee;

-- APPROACH:2 we can also find the second highest with subqueries as well 
SELECT
    MAX(salary) AS SecondHighestSalary
FROM
    Employee
WHERE
    salary < (
        SELECT
            MAX(salary)
        FROM
            Employee
    );

-- APPROACH-3: this is about finding the nth highest or lowest based on the windows function RANK  Function
WITH CTE AS
			(SELECT Salary, DENSE_RANK () OVER (ORDER BY Salary desc) AS RANK_desc
			   FROM Employee)
SELECT MAX(salary) AS SecondHighestSalary
  FROM CTE
 WHERE RANK_desc = 2