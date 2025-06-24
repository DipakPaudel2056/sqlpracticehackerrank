select
    teacher_id,
    count(distinct subject_id) as cnt
from
    teacher
group by
    teacher_id;

-- this program finds the count of the teacher with the distinct subjects teaching in the university