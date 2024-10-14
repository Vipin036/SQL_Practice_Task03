--Grouping Data
select TO_CHAR(saledate, 'YYYY-MM') as month, avg(quantitysold) as average_quantity_sold
from Sale
group by TO_CHAR(saledate, 'YYYY-MM')
order by month;