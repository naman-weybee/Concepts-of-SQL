--SQL Not Null

create table person2(
	ID int not null unique,
	LastName varchar(255),
	FullName varchar(255),
	Age int
);

select * from person2;

create table person3(
	ID int not null unique,
	LastName varchar(255) not null,
	FullName varchar(255),
	Age int
);

select * from person3;

create table person4(
	ID int not null,
	LastName varchar(255),
	FullName varchar(255),
	Age int,
	unique (ID)
);

select * from person4;

create table person5(
	ID int not null,
	LastName varchar(255),
	FullName varchar(255),
	Age int,
	constraint person unique (ID, LastName)
);

select * from person5;

alter table person5
add unique (ID);

alter table person3
add constraint uc_person unique (ID, LastName);

alter table person3
drop constraint uc_person;

insert into person3
values(1, 'stive', 'jonas', 23),
(2, 'dev', 'suman', 34);

insert into person3
values(3, 'stive', 'jonas', 23),
(4, 'dev', 'jonas', 45);

select * from person3;

insert into person3
values(5, 'sesa', 'jonas', 23);

insert into person3
values(6, 'sesa', 'jonasdev', 25);