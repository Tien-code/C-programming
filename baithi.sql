create database SellingPoint
go

use SellingPoint
go

create table Categories(
CateID char(6) primary key ,
CateName nvarchar(100) not null,
Description nvarchar(200)
)
go
 insert into Categories values (1,'Ram',' RAM TEAM ELITE PLUS 8G UDD4 2666 DDR4'),
                               (2,'CPU',' Intel Pentium, Intel Celeron và intel Core i'),						 
							   (3,'VGA','ASUS PH GT1030 O2G 2GB GDDR5, 64bit, DVI HDMI'),
							   (4,'HHD','acer PH GT1280 04G 4G GHHD8, 64bit, HHD DMM'),
							   (5,'SHD','macbook PH GT1290 08G 4G GHHD9, 64bit, HHD DMM')
go

select * from Categories
go

drop table Categories
go

create table Pasts(
PartID int primary key identity,
PartName nvarchar (100) not null,
CateID char(6),
Description nvarchar(1000),
Price money not null default '0' ,
Quantity int default '0',
Warranty int default '1',
Photo nvarchar(200) default'photo/nophoto.png',
Constraint lk Foreign Key (CateID) References Categories(CateID)
)
go

insert into Pasts(PartName,CateID,Description,Price,Quantity,Warranty) values ('RAM ',1,' 8G UDD4 2666 DDR4',90,10,1),
                                                                              ('Intel ',2,'Intel Celeron và intel Core i',100,5,2),
						                                                      ('ASUS',3,'GT1030 O2G 2GB GDDR5, 64bit, DVI HDMI',120,6,1)
go 

drop table Pasts
go
--4.List all parts in the store with price > 100$.
select PartName from Pasts
where Price > 100
go

--5. List all parts of the category ‘CPU’.
select c.CateID, c.CateName, p.CateID, p.PartName from Categories c
join Pasts as p on c.CateID = p.CateID
where CateName = 'CPU'
go

--6.Create a view v_Parts contains the following information (PartID, PartName, CateName,Price, Quantity) from table Parts and Categories.

CREATE VIEW V_Parts AS
SELECT P.PartID, P.PartName, C.CateName, P.Price, P.Quantity
FROM Pasts P
JOIN Categories C ON C.CateID=P.CateID
GO
--7. Create a view v_TopParts about 5 parts with the most expensive price.

