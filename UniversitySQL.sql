--create database BaseUniversity;
use BaseUniversity;
create table Ambion(
ID int not null Identity,
Subjects nvarchar(50),
HeadOfSubject nvarchar(30)
);

insert into Ambion(Subjects,HeadOfSubject)
values('Maths','A.Kirakosyan'),
('Geography','D.Taronyan'),
('Programming','H.Harutyunyan'),
('English','T.Aharonyan'),
('History','M.Alexanyan');

create table Fakultet(
ID int not null identity,
Profession nvarchar(40),
IfPaid bit,
Cost smallmoney
);

insert into Fakultet(Profession,IfPaid,Cost)
values('Maths',1,1600000),
('Geography',0,0),
('Programming',1,1000000),
('English',1,800000),
('History',0,0);

create table Students(
ID int not null Identity,
FName nvarchar(50),
LName nvarchar(50),
Phone int,
Paid bit,
AvgMark tinyint
);

select * from Students;
alter table Students drop column Phone;
--alter table Students add Phone int;