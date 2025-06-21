-- the problem here is to find the employees whose bonus is less than 1000 from 2 different tables
select e.name,b.bonus
from Employee e
LEFT join bonus b on e.empId = b.empId
where b.bonus < 1000 or bonus IS NULL;