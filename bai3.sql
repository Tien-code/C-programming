CREATE DATABASE task8vd1
GO
USE task8vd1
go

create table customer
(
customerid int identity primary key,
customername varchar(50),
address varchar(100),
phone varchar(12)
)
go
insert into customer(Customername,address,phone) values ('luong minh tien','nhon',2133212334),
							('luong minh thanh','nhon',456566563),
							('bui van hoa','thanh xuan',34353455),
							('vu ngoc anh','me tri',23454563),
							('vu viet anh', 'me tri',9075348)
go

select * from customer

 drop table customer
  go

create table book
(
bookcode int  primary key,
category varchar(50),
author varchar(50),
publisher varchar(50),
title varchar(100),
price int,
instore int,
)
go

insert into book values (901,'van','bui ngoc thach','le ngoc thach','van ve',10000,9900),
						(902,'van hoc','pham ngoc hach','nguyen van anh','van hoc moi',20000,3900),
						(903,'toa','luong minh tien','pham ngoc thu','toan dai',100000,1900),
						(904,'ly','le thao chi','nguy ngoc minh','ly cao cap',30000,7980),
						(905,'hoa','tran bao ngoc','cung ngoc hach','hoa hoc',70000,300)
						
go

select * from book
go

drop table Book
   go

create table booksold
(
booksoldid int primary key,
customerid int identity,
bookcode int,
date datetime,
price int,
amount int
constraint tk foreign key (customerid) references customer(customerid),
constraint tk foreign key (bookcode) references book(bookcode)

)
go

insert into booksold(booksoldid,bookcode,date,price,amount) 
values(845,901,20/11/2021,10000,30),
	  (845,902,20/11/2021,20000,30),
	  (825,902,10/9/2061,90000,90),
	   (825,903,10/9/2061,90000,90),
		(835,903,28/6/2071,90000,50),
		(835,904,28/6/2071,30000,50),
		(895,904,23/5/2031,30000,80),
		(895,902,23/5/2031,20000,80),
		(805,901,26/1/2025,10000,10),
		(805,905,26/1/2025,50000,10)
go

select * from booksold

DROP TABLE BookSold
 GO

 --2 T?o khung nhin ch?a danh sách cu?n (bookcode và title , price) kèm theo s? l??ng ?ã bán ?c c?a m?i cu?n sách

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
where d.Date < '10/9/2061'
go
select * from V_Customer_IV
go
drop VIEW V_Customer_IV 
GO