--SQL Index

select * from customers;
select * from employees;

create index customersINDEX
on customers(customerid, customername);

create index customersINDEX1
on customers(customerid);

create UNIQUE index customersINDEX2
on employees(EMPLOYEEID);

create UNIQUE index customersINDEX3
on employees(lastname);

create UNIQUE index customersINDEX4
on employees(firstname);

drop index employees.customersINDEX3;
drop index employees.customersINDEX4;