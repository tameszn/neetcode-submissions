select Products.product_name,sum(Orders.unit) as unit  from Products join Orders 
on Products.product_id=Orders.product_id  
where Orders.order_date  like '2020-02-%'
group by Orders.product_id 
having sum(unit)>=100;

