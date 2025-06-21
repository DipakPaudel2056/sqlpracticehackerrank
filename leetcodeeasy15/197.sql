-- rising temperature
-- # Write your MySQL query statement below
-- the problem statement is to find the id where the previous day is hotter than today
select w2.id as Id
from weather w1
cross join weather w2 
where DATEDIFF(w2.recordDate,w1.recordDate) = 1
and w2.temperature > w1.temperature;