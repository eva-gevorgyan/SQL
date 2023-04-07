create database Test3003;
--drop database Test3003;
use Test3003;
create table TestTable(
ID int not null identity,
FirstName nvarchar(50),
LastName nvarchar(50),
Email varchar(50)
);
select * from TestTable;

--alter table TestTable
--alter column Firsname nvarchar(20);

alter table TestTable
add Gender nvarchar(20);

--alter table TestTable
--alter column Gender int(50);

insert into TestTable values('h','j','y','r'),
('Name2','LastName2','username2@gmail.com','Man'),
('Name2','LastName2','username2@gmail.com','Man'),
('Name4','LastName4','username4@gmail.com','Woman'),
('Name5','LastName5','username5@gmail.com','Man'),
('Name6','LastName6','username6@gmail.com','Woman'),
('Name7','LastName7','username7@gmail.com','Woman')

select * from TestTable;

update TestTable set FirstName='NewName' where ID =1;
update TestTable set Gender = 'Woman' where ID=2;
update TestTable set LastName='LastName' where ID=8;

update TestTable set Gender = 'Man' where FirstName='NewName';

update TestTable set FirstName='NewName2', LastName ='NewLastName2' where ID=5;
delete from TestTable where ID=3;
delete from TestTable where ID=7 or ID=9;
delete from TestTable where ID=6 or ID=11;

--select * from TestTable where FirstName like 'N%';
select * from TestTable where FirstName like '%2';
select * from TestTable where FirstName like '%6%';

--miayn mecatarov sksvoxnery select * from TestTable where FirstName like''

--  + - / = *

alter table TestTable add Age int;
update TestTable set Age=1 where ID=1;
select * from TestTable;

declare @sum int;

--set @sum+=Age;

select ID + Age as Gumarum from TestTable where ID between 2 and 5;
select ID - Age as Hanum from TestTable where ID between 2 and 5;
select ID / Age as Bajanum from TestTable where ID between 2 and 5;
select ID * Age as Bazmapatkum from TestTable where ID between 2 and 5;
select ID + Age as Gumarum from TestTable where ID=Age;
select ID % Age as Gumarum from TestTable where ID=8;

select * from TestTable;

alter table TestTable add Bitayin bit;
update TestTable set Bitayin = 0 where ID =1 or ID=6;
update TestTable set Bitayin =1 where ID=1 or ID=10;
update TestTable set Bitayin =0 where ID between 3 and 8;
--select sum(Bitayin) from TestTable;
