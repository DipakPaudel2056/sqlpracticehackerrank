-- here we are finding the classes where the count of students are greater than or equal to 5
select class
from Courses
group by class
having count(class) >= 5;