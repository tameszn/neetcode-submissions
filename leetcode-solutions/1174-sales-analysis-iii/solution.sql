# Write your MySQL query statement below


select product_id,product_name
from product natural join sales
group by product_id
having min(sale_date)>='2019-01-01' and max(sale_date)<='2019-03-31'



#solution 2
-- SELECT product_id, product_name 
-- FROM Product 
-- WHERE product_id IN
-- (SELECT product_id
-- FROM Sales
-- GROUP BY product_id
-- HAVING MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <= '2019-03-31')
