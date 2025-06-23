-- make the name in the given column in pascal Notation 
select
    user_id,
    concat (
        UPPER(SUBSTRING(name, 1, 1)),
        LOWER(SUBSTRING(name, 2, LENGTH (name)))
    ) AS name
from
    Users
order by
    user_id;