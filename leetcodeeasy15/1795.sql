-- -- the problem we are facing right now is to rearrange the table that is in 
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | store1      | int     |
-- | store2      | int     |
-- | store3      | int     |
-- +-------------+---------+ 
-- structure to 
-- +------------+--------+-------+
-- | product_id | store  | price |
-- +------------+--------+-------+
-- | 0          | store1 | 95    |
-- | 0          | store2 | 100   |
-- | 0          | store3 | 105   |
-- | 1          | store1 | 70    |
-- | 1          | store3 | 80    |
-- and the solution would be:
select
    product_id,
    'store1' as store,
    store1 as price
from
    Products
where
    store1 is not null
union all
select
    product_id,
    'store2' as store,
    store2 as price
from
    Products
where
    store2 is not null
union all
select
    product_id,
    'store3' as store,
    store3 as price
from
    Products
where
    store3 is not null
order by
    product_id;