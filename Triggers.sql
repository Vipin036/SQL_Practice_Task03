--Triggers
create table upd_prod(ProductID serial Primary key,Old_ProductName varchar,New_ProductName varchar,
	Old_Category varchar,New_Category varchar);
	
create or replace function upd_product()
returns trigger as $$
begin
insert into upd_prod(ProductID,Old_ProductName,New_ProductName,Old_Category,New_Category)
values(Old.ProductID,Old.ProductName,New.ProductName,Old.Category,New.Category);
return new;
end
$$ LANGUAGE plpgsql;

create trigger upd_prod
after update on product
for each row
execute function upd_product()

select * from product;

update product set category = 'Electronics' where productid in (32,36);
 
select * from upd_prod;