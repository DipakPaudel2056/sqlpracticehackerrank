-- the problem here is to find the product with valid serial numbers
select
    *
from
    products
where
    regexp_like (description, "\\bSN[0-9]{4}-[0-9]{4}\\b", 'c')
order by
    1