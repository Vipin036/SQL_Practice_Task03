--Using Views
create view ActiveCustomers as
select c.CustomerID, c.CustomerName, s.SaleDate as LastYearPurchaseDate
from Customer c
join Sale s on c.saleID = s.saleID
where s.SaleDate <= current_date - interval '1 year'
order by LastYearPurchaseDate DESC;

select * from ActiveCustomers;