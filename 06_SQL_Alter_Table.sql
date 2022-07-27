--SQL Alter Table

select * from customers;
select * from persons;

alter table customers
add Email varchar(255);

alter table customers
drop column Email;

alter table persons
add BirthDate Date;

--alter table persons
--alter column BirthDate year;

alter table persons
drop column BirthDate;