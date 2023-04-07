create database FoodMarket;
use FoodMarket;

create table Users(
ID  int not null identity primary key(ID),
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
Gender bit not null,
PhoneNumber nvarchar(20),
CardNumber int
);

select * from Users;

create table Orders(
ID int not null identity Primary key(ID),
UsersID int not null,
foreign key(ID) references Users(ID),
CreatedDate Date,
DeliveryDate Date,
PaymentTypeID int,
);

create table PaymentType(
ID int identity primary key(ID),
PaymentMethod nvarchar(50),
);

alter table Orders add Deposit decimal;
alter table Orders add TotalCost decimal;
alter table Orders add [Status] Tinyint not null;
alter table Orders add Bag nvarchar(50);

create table Food(
ID int identity primary key(ID),
[Name] nvarchar(50) not null,
[Type] Tinyint not null, --2 sovorakan, 1 vegan, 3 pahq
Price decimal,
Sale Tinyint
);
insert into Orders values(1,'2023-01-02','2023-01-02',1,500,3500,0,0),
(2,'2023-10-22','2023-10-23',2,0,7800,1,1),
(3,'2023-10-24','2023-10-24',3,300,2500,0,0),
(4,'2023-03-08','2023-03-08',1,0,7000,2,2),
(5,'2023-06-06','2023-06-07',3,100,2500,0,1);
select * from Orders;
alter table Orders add foreign key(PaymentTypeID) references PaymentType(ID);
SELECT *,Orders.UsersID
FROM Users
Inner JOIN Orders ON Users.ID = Orders.UsersID;