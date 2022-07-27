--SQL Check

select * from order_details;

create table person9(
	orderdetailID int not null,
	orderID int not null,
	productID int not null,
	quantity int check (quantity >= 18)
);

select * from person9;

insert into person9
values(1, 23, 456, 20);

insert into person9
values(1, 23, 456, 10);

alter table person9
add constraint ck check (quantity >= 18 and productID > 10);

alter table person9
drop constraint ck ;