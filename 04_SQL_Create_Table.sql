--SQL Create Table

USE w3schools;

CREATE TABLE Persons(
	PersonID int,
	LastName varchar(255),
	FirstName varchar(255),
	Address varchar(255),
	City varchar(255)
);

select * from Persons;

insert into Persons
values(1, 'depp', 'johny', '203 bleeker street', 'maxico');

insert into Persons
values(2, 'stive', 'jonas', '45 white street', 'berline', '06-05-1989');