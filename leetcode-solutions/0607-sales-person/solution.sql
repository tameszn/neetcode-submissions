select S.name from SalesPerson S where S.sales_id NOT IN (select Orders.sales_id from Orders join Company on Orders.com_id=Company.com_id where Company.name='RED')
