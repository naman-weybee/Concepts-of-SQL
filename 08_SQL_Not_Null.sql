--SQL Not Null

create table person1(
	ID int not null,
	LastName varchar(255),
	FullName varchar(255),
	Age int
);

select * from person1;

insert into person1
values(1, 'stive', 'jonas', 23);

--alter table person1
--modify age int not null;