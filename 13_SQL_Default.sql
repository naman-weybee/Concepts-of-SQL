--SQL Default

create table person10(
	ID int not null,
	LastName nvarchar(255),
	FirstName nvarchar(255),
	Age int,
	City nvarchar(255) default 'maxico'
);

select * from person10;

insert into person10
values(1, 'depp', 'johny', 23, 'delhi');

insert into person10
values(2, 'brown', 'robert', 25, 'mumbai');

CREATE TABLE Orders1 (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);

select * from Orders1;

insert into Orders1
values(2, 25, '01-05-1992');

create table person11(
	ID int not null,
	LastName nvarchar(255),
	FirstName nvarchar(255),
	Age int,
	City nvarchar(255)
);

select * from person11;

ALTER TABLE person11
ADD CONSTRAINT df_City
DEFAULT 'Sandnes' FOR City;

alter table person11
drop constraint df_city;

alter table person11
add default 'Sandnes' for city;

--alter table person11
--alter column city drop default;