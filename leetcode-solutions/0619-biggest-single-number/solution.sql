# Write your MySQL query statement beselect max(num) as num
select max(num) as num
from(
    select num
    from mynumbers
    group by num
    having count(num)=1
)as num
