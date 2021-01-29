create database Phan2
go
use Phan2
go
 --bang customer
 create table customer(
 CustomerID int identity primary key,
 CustomerName varchar(50),
 Address varchar(100),
 Phone int
 )
 go
 insert into customer (CustomerName,Address,Phone) values('Ngo Chi Thanh Dat','Bac Ninh',0394480757)
  insert into customer (CustomerName,Address,Phone) values('Nguyen Quang Tuan','Vong Nguyet',0386684837)
  insert into customer (CustomerName,Address,Phone) values('Nguyen Thi Anh Tam','Dong Xuyen',038888999)
  insert into customer (CustomerName,Address,Phone) values('Do Thi Thanh Thao','Yen Trung',0364899999)
  insert into customer (CustomerName,Address,Phone) values('Truong Phuong Nha','O Cach',0314697777)
  insert into customer (CustomerName,Address,Phone) values('Le Duy Hoang','Tam Giang',0315897777)
  insert into customer (CustomerName,Address,Phone) values('nguyen Thi Thao','MAI ha',0314697777)
  insert into customer (CustomerName,Address,Phone) values('Nguyen Van Thanh','Mai Ha',0347455555)
  insert into customer (CustomerName,Address,Phone) values('Nguyen Sy Truong','Xuan Cai',034785555)
  insert into customer (CustomerName,Address,Phone) values('Ngo Tuan Truong','Chan Lac',031462277)
  go
  select * from customer
  go
  drop table customer
  go
 --Bang Book
 create table Book(
 BookCode int primary key,
 Category varchar(50),
 Author varchar(50),
Publisher varchar(50),
Titile varchar(100),
Price money,
InStore int 
 )
 go
 insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(11,'Honor','BatMan','Dcomic','Avengers',$1000,150)
  insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(22,'Hope','MR.bean','Mexe','Relax',$2600,20)
   insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(33,'Happy','Chau Trinh Tri','MAIS','Happy',$200,100)
   insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(44,'Ghost','Bitch','Oisj','Sad',$1203,12)
   insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(55,'Romantic','Titanic','ASHILA','Love',$5000,123)
   insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(66,'Honor','BatMan','Dcomic','Avengers',$1000,150)
  insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(77,'Hope','MR.bean','Mexe','Relax',$2600,20)
   insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(88,'Happy','Chau Trinh Tri','MAIS','Happy',$200,100)
   insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(99,'Ghost','Bitch','Oisj','Sad',$1203,12)
   insert into Book(BookCode,Category,Author,Publisher,Titile,Price,InStore)values(100,'Romantic','Titanic','ASHILA','Love',$5000,123)
   go
   select * from Book
   go
   drop table Book
   go
 --Bang BookSold
 create table BookSold(
 BookSoldID INT PRIMARY KEY,
 CustomerID int identity,
 BookCode int,
 Date datetime,
 Price money,
 Ammount int,
 constraint mi foreign key (CustomerID) references customer(CustomerID),
 constraint mh foreign key (BookCode) references Book(BookCode)
 )
 go
 insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (123,11,'1994/12/12',$1000,20)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (234,22,'1994/2/2',$200,10)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (345,33,'1994/1/1',$500,3)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (456,44,'1994/2/1',$540,10)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (567,55,'1994/12/1',$3000,5)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (789,66,'1994/1/12',$8000,8)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (890,77,'1994/2/2',$9000,9)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (891,88,'1994/1/8',$10000,4)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (892,99,'1994/8/2',$10020,1)
  insert into BookSold(BookSoldID,BookCode,Date,Price,Ammount) values
 (893,100,'1994/2/5',$102100,54)
 go
 select * from BookSold
 GO
 DROP TABLE BookSold
 GO

--2 T?o khung nhin ch?a danh sách cu?n (bookcode và title , price) kèm theo s? l??ng ?ã bán ?c c?a m?i cu?n sách

--tao mot khung nhin chua danh sach các cu?n sách kèm theo s? l??ng ?ã bán ???c c?a  m?i cu?n sách
create view V_Book_So as
select k.BookCode,k.Titile,k.Price,s.Ammount
from Book k
join BookSold as s on k.BookCode=s.BookCode
go
select * from V_Book_So
go
drop view V_Book_So
go
--3 tao khung nhìn ch?a danh sách khách hàng
create view V_Customer_IX AS
SELECT c.CustomerId,c.CustomerName,c.Address,k.Ammount
from customer c
join BookSold as k on c.CustomerID=k.Ammount
go
select * from V_Customer_IX
go
drop view V_Customer_IX
go
--4 Tao mot khung nhin chua danh sach khach hang 
create view V_Customer_IV as
select c.CustomerId,c.CustomerName,c.Address,d.Date
from customer c
join BookSold as d on c.CustomerID=d.CustomerID
where d.Date < '1994/12/12'
go
select * from V_Customer_IV
go
drop VIEW V_Customer_IV 
GO