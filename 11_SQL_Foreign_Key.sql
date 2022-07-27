--SQL Foreign Key

create table newperson(
	ID int not null primary key,
	LastName varchar(255),
	FullName varchar(255),
	Age int,
);

select * from newperson;

create table neworders(
	orderID int not null primary key,
	orderNumber int not null,
	personID int foreign key
	references newperson(ID)
);

select * from neworders;

create table oldorders(
	orderID int not null,
	orderNumber int not null,
	ID int,
	primary key(orderID),
	constraint fk foreign key (ID)
	references newperson(ID)
);

select * from oldorders;

alter table oldorders
add foreign key (ID) references newperson(ID);

create table latestorders(
	orderID int not null,
	orderNumber int not null,
	ID int,
);

select * from latestorders;

alter table latestorders
add constraint fk2
foreign key (ID) references newperson(ID);

alter table latestorders
drop constraint fk2;