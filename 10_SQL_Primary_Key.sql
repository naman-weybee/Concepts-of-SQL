--SQL Primary Key

create table person6(
	ID int not null primary key,
	LastName varchar(255),
	FullName varchar(255),
	Age int,
);

select * from person6;

create table person7(
	ID int not null,
	LastName varchar(255),
	FullName varchar(255),
	Age int not null,
	constraint pk_person primary key (ID, LastName),
);

select * from person7;

alter table person7
drop constraint pk_person;

create table person8(
	ID int not null,
	LastName varchar(255),
	FullName varchar(255) not null,
	Age int,
);

alter table person8
add primary key (FullName);