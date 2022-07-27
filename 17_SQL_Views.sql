--SQL Views

--select * from customers;
--select * from products;

create view customerVIEW as
select *
from customers;

--select * from customerVIEW;

--create view customerVIEW1 as
--select CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country
--from customers;

--select * from customerVIEW1;

--create view customerVIEW2 as
--select CustomerName, ContactName, Country
--from customers;

--select * from customerVIEW2;

--create view productVIEW as
--select ProductName, Unit, Price, SupplierID
--from products
--where price > 20;

--select * from productVIEW;

--create view productVIEW1 as
--select ProductName, Unit, Price, SupplierID
--from products
--where price > (select avg(price) from products);

--select * from productVIEW1;

--create or replace view customerVIEW2 as
--select CustomerName, Country
--from customers;

--drop view productVIEW;
--drop view productVIEW1;

--SQL Updating a View

--CREATE VIEW BrazilCustomers AS
--SELECT CustomerName, ContactName, City
--FROM Customers
--WHERE Country = 'Brazil';

--select * from BrazilCustomers;

--ALTER VIEW BrazilCustomers AS
--SELECT CustomerName, ContactName
--FROM Customers
--WHERE Country = 'Brazil';