
create database Tasks;
use Tasks;

create table AUTHOR(
	Author_ID varchar(255) primary key,
	Author_Name varchar(255) DEFAULT NULL,
);

create table BOOKS(
	Book_ID varchar(255) primary key,
	Book_Name varchar(255) DEFAULT NULL,
	Author_ID varchar(255) foreign key references AUTHOR(Author_ID),
	Price int DEFAULT NULL,
	Publisher_ID varchar(255) DEFAULT NULL,
);

alter table BOOKS
add foreign key (Publisher_ID) references Publisher(Publisher_ID);

create table CUSTOMER(
	Customer_ID varchar(255) primary key,
	Customer_Name varchar(255) DEFAULT NULL,
	Street_Address varchar(255) DEFAULT NULL,
	City varchar(255) DEFAULT NULL,
	Phone_Number varchar(255) DEFAULT NULL,
	Credit_Card_Number varchar(255) DEFAULT NULL,
);


alter table CUSTOMER
add foreign key (Credit_Card_Number) references Credit_Card_Details(Credit_Card_Number);

create table Credit_Card_Details(
	Credit_Card_Number varchar(255) primary key,
	Credit_Card_Type varchar(255) DEFAULT NULL,
	Expiry_Date date DEFAULT NULL,
);

create table Order_Details(
	Order_ID int primary key,
	Customer_ID varchar(255) foreign key references CUSTOMER(Customer_ID),
	Shipping_Type varchar(255) DEFAULT NULL,
	Date_Of_Purchase date DEFAULT NULL,
	Shopping_Cart_ID int DEFAULT NULL,
);


alter table Order_Details
add foreign key (Shipping_Type) references Shipping_Type(Shipping_Type);

alter table Order_Details
add foreign key (Shopping_Cart_ID) references Shopping_Cart(Shopping_Cart_ID);

create table Publisher(
	Publisher_ID varchar(255) primary key,
	Publisher_Name varchar(255) DEFAULT NULL,
);

create table Purchase_History(
	Customer_ID varchar(255) foreign key references CUSTOMER(Customer_ID),
	Order_ID int foreign key references Order_Details(Order_ID),
);


create table Shipping_Type(
	Shipping_Type varchar(255) primary key,
	Shipping_Number int DEFAULT NULL,
);

create table Shopping_Cart(
	Shopping_Cart_ID int primary key,
	Book_ID varchar(255) foreign key references BOOKS(Book_ID),
	Price int DEFAULT NULL,
	Date date DEFAULT NULL,
	Quantity int DEFAULT NULL,
);