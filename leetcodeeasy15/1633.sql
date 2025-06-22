select contest_id,ROUND(COUNT(contest_id) * 100.0 / (SELECT COUNT(user_id) FROM Users), 2) as percentage from Register r
left join Users u on r.user_id = u.user_id
group by contest_id
order by percentage desc, contest_id;
-- here we are finding the percentage of participation by each users in different categories 