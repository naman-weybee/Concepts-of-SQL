--SQL Auto Increment

CREATE TABLE person12 (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

select * from person12;

INSERT INTO person12 (FirstName,LastName)
VALUES ('Lars','Monsen');
INSERT INTO person12 (FirstName,LastName)
VALUES ('depp','johny');

CREATE TABLE person13 (
    Personid int IDENTITY(10,5) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

select * from person13;

INSERT INTO person13 (FirstName,LastName)
VALUES ('Lars','Monsen');
INSERT INTO person13 (FirstName,LastName)
VALUES ('depp','johny');
