create database Hospital;
Use Hospital;
create table Doctors(
ID int not null identity primary key(ID),
FirstName nvarchar(40),
LastName nvarchar(40),
Profession nvarchar(50),
Salary int,
DutyDay date
);
insert into Doctors values('Karine','Hakobyan','Srtaban',350000,'2023-04-04'),
('Smbat','Harutyunyan','Mashkaban',270000,'2023-05-03'),
('Hakob','Stamboltsyan','Atamnabuj',400000,'2023-05-14'),
('Bagrat','Petrosyan','LOR',290000,'2023-07-27'),
('Meline','Vardanyan','Nyardaban',450000,'2023-07-30'),
('Manuk','Manukyan','Travmatolog',230000,'2023-06-13'),
('Nvard','Nikolyan','Pediatr',400000,'2023-06-14');
select * from Doctors;

create table Users(
ID int not null identity primary key(ID),
FirstName nvarchar(50),
LastName nvarchar(50),
Age tinyint,
);
insert into Users values('Robert','Vardanyan',24),
('Samvel','Mkrtchayn',36),
('Arman','Margaryan',78),
('Siranush','Zakaryan',42),
('Hripsime','Baghdasaryan',17);
create table Anketa(
ID int not null identity primary key(ID),
UsersID int not null,
foreign key(UsersID) references Users(ID),
DoctorID int not null,
foreign key(DoctorID) references Doctors(ID),
Diagnoz text,
Dimum date,
Lavacum date,
IfPaid bit,
PaymentType tinyint
);
insert into Anketa values
(1,4,'Gaymarit','2023-02-01','2023-02-08',1,1),
(2,2,'Mashkayin hivandutyun','2023-08-08','2023-08-15',1,2),
(3,1,'Aritmiya','2023-06-12','2023-07-14',1,1),
(4,6,'Dzerqi kotrvacq','2023-01-01','2023-02-09',1,3),
(5,5,'Nyardayin hamakargi hivandutyun','2023-07-15','2023-10-15',1,1);
select * from Anketa;

create table Payment(
ID int not null identity primary key(ID),
Type nvarchar(10)
);
insert into Payment values('ID bank'),('Online'),('Cash');

select Doctors.FirstName,Doctors.LastName,Doctors.Profession,Users.FirstName,Users.LastName,Anketa.Diagnoz,Anketa.Dimum,Anketa.Lavacum,Anketa.IfPaid
from Users
right join Anketa on Users.ID=Anketa.UsersID
right join Doctors on Anketa.DoctorID=Doctors.ID;
