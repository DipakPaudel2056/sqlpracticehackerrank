select name , sum(t.amount) as balance 
from Users u
left join transactions t on u.account = t.account
group by u.account
having balance > 10000;

-- we are given two tables one with the users information and other with the account information we have to find the users whose balance is more than 10000