
insert into AUTHOR
values(1, 'jonas'),
(2, 'johny');

select * from AUTHOR;

insert into BOOKS(Book_ID, Book_Name, Author_ID, Price, Publisher_ID)
values(1, 'the power of positivity', 1, 299, 1),
(2, 'think and grow rich', 2, 599, 2);

select * from BOOKS;

insert into Publisher
values(1, 'jay Shukla'),
(2, 'saurabh Shukla');

select * from Publisher;

insert into Shipping_Type
values('rail servicing', 1),
('plane servicing', 2);

select * from Shipping_Type;

insert into Credit_Card_Details
values(1234123412341234, 'Rewards credit cards', '2035-12-12'),
(5678567856785678, 'Secure credit cards', '2035-10-08');

select * from Credit_Card_Details;

insert into CUSTOMER
values(1, 'stive', '203 bleeker street', 'maxico', 6732457698, 1234123412341234),
(2, 'depp', '122 white street', 'maxico', 4679835319, 5678567856785678);

select * from CUSTOMER;

insert into Order_Details
values(1, 1, 'plane servicing', '1995-12-16', 1),
(2, 2, 'rail servicing', '2001-03-09', 2);

select * from Order_Details;

insert into Shopping_Cart
values(1, 1, 449, '2005-12-08', 23),
(2, 2, 1449, '2007-02-15', 12);

select * from Shopping_Cart;

insert into Purchase_History
values(1, 1),
(2, 2);

select * from Purchase_History;

--create view Customer_Details as
--select CUSTOMER.Customer_ID, Customer_Name, Street_Address, Order_ID, Shipping_Type, Date_Of_Purchase, Shopping_Cart_ID
--from CUSTOMER
--inner join Order_Details
--on Order_Details.Customer_ID = CUSTOMER.Customer_ID;

select Customer_Name, CUSTOMER.Customer_ID, Date_Of_Purchase, Shopping_Cart.Shopping_Cart_ID, Book_ID
from Order_Details
inner join CUSTOMER
on Order_Details.Customer_ID = CUSTOMER.Customer_ID
inner join Shopping_Cart
on Order_Details.Shopping_Cart_ID = Shopping_Cart.Shopping_Cart_ID;