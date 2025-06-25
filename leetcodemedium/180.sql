-- -- the problem here is to find the number that are same more than 3 times and consecutive
-- Input: 
-- Logs table:
-- +----+-----+
-- | id | num |
-- +----+-----+
-- | 1  | 1   |
-- | 2  | 1   |
-- | 3  | 1   |
-- | 4  | 2   |
-- | 5  | 1   |
-- | 6  | 2   |
-- | 7  | 2   |
-- +----+-----+
-- -- as we can see that the number 1 is repeated more than 3 times 
-- -- APPROACH 1:-
-- -- since we are only checking for the 3 consecutive values, it is good idea to create 3 aliases of the table and compare if all three id are same and all 3 values are same 
SELECT DISTINCT
    l1.num AS ConsecutiveNums
FROM
    Logs l1,
    Logs l2,
    Logs l3
WHERE
    l1.id = l2.id -1
    and l2.id = l3.id -1
    and l1.num = l2.num
    and l2.num = l3.num;