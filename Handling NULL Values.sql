--Handling NULL Values
select * from sale;
select count(*) as Null_TotalAmount from sale
where TotalAmount is Null;