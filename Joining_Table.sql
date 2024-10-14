--Joining Tables
select *,c.customername,c.contactnumber from orders o inner join customer c on o.customerid = c.customerid;