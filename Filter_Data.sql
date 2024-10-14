--SQL_Practice_Task03

create table employee(EmployeeID serial Primary key,FirstName varchar,LastName varchar,Department varchar,
	City varchar,ManagerID int,Salary int);
create table customer(CustomerID serial Primary key,SaleID int,CustomerName varchar,ContactNumber varchar);
create table product(ProductID serial Primary key,ProductName varchar,Category varchar);
create table sale(SaleID serial Primary key,Productid int,QuantitySold int,SaleDate date);
create table events(EventID serial Primary key,EventName varchar,EventDate date);
create table participant(ParticipantID serial Primary key,ParticipantName varchar,Score int);
create table orders(OrderID serial Primary key,customerid int,OrderDate date,TotalAmount real);


\copy employee from '/Users/vipinhedaoo/Documents/Data Analytics/PostgreSQL/Emp.csv' Delimiter ',' csv header;
\copy customer from '/Users/vipinhedaoo/Documents/Data Analytics/PostgreSQL/Cust.csv' Delimiter ',' csv header;
\copy product from '/Users/vipinhedaoo/Documents/Data Analytics/PostgreSQL/Prod.csv' Delimiter ',' csv header;
\copy sale from '/Users/vipinhedaoo/Documents/Data Analytics/PostgreSQL/Sales.csv' Delimiter ',' csv header;
\copy events from '/Users/vipinhedaoo/Documents/Data Analytics/PostgreSQL/Event.csv' Delimiter ',' csv header;
\copy participant from '/Users/vipinhedaoo/Documents/Data Analytics/PostgreSQL/Participant.csv' Delimiter ',' csv header;
\copy orders from '/Users/vipinhedaoo/Documents/Data Analytics/PostgreSQL/Order.csv' Delimiter ',' csv header;


select * from employee;
select * from customer;
select * from product;
select * from sale;
select * from events;
select * from participant;
select * from orders;


--Filtering Data
select * from employee where department = 'IT' and salary > 50000;