with cte as(
select t.account, u.name, sum(amount) as balance
from Transactions t
left join Users u on t.account = u.account
group by account )

select name, balance
from cte
where balance > 10000
