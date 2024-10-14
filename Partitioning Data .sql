--Partitioning Data 
select productid,quantitysold,saledate,totalamount,sum(quantitysold) 
	over(partition by productid order by totalamount desc) from sale;