-- this is the question where we have to provide tthe bonus to the employee whose id is odd and name not starting with M 
select employee_id, 
case when (employee_id % 2 =1) and name not like 'M%'   
then salary else 0 end as bonus 
from Employees order by employee_id;