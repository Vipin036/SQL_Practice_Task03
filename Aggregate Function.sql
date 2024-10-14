--Aggregate Function
select distinct(ProductID),sum(QuantitySold) over(partition by ProductID) from sale order by ProductID;
--or
select productid,SUM(QuantitySold) from sale group by productid order by ProductID;