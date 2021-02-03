create database task9
go
use task9
go

create table Toys
(
ProductCode varchar(5) Primary Key,
name varchar(30),
Category varchar(30),
Manufacturer varchar(40),
AgeRange varchar(15),
UnitPrice money,
Netweight int,
QtyOnHand int
)
go

INSERT INTO TOYS VALUES ('TA012','Barbie Fashionistas Doll 2','Doll','ABC COMPANY','3-9',10,125,50),
						 ('TX125','LEGO Star Wars','LEGO','LEGO COMPANY','3-12',25,400,30),
						 ('TE025','Pokemon Sword Shield 5','CARD','POKEMON COMPANY','6-12',30,325,85),
						 ('TW325','Step2 Timeless Trends Kitchen','KITCHEN','STEP COMPANY','3-12',125,1200,56),
						 ('XR025','Kid Connection Juinor Doctor','DOCTOR','STEP COMPANY','3-12',66,400,38),
						 ('MT125','CAR RACING','RACING CONTROLLER','LEGO COMPANY','3-12',25,400,96),
						 ('RT325','UNO','CARD ','ABC COMPANY','6-18',6,350,80),
						 ('AM032','TEDDY BEAR','STUFFED ANIMAL','TOY COMPANY','2-12',600,356,120),
						 ('RF025','LEGO AVENGERS','LEGO','LEGO COMPANY','3-12',65,362,80),
						 ('OP256','LEGO CREATOR','LEGO','LEGO COMPANY','3-12',25,129,52),
						 ('PL632','Barbie Fashionistas Doll 3','Doll','ABC COMPANY','3-9',15,156,140),
						 ('KL023','SHIP RACING','RACING CONTROLLER','TOY COMPANY','6-12',852,652,75),
						 ('IO025','LEGO Star Wars2','LEGO','LEGO COMPANY','3-12',365,458,65),
						 ('KI236','LEGO Star Wars3','LEGO','LEGO COMPANY','3-12',925,463,35),
						 ('ML559','LEGO Star Wars4','LEGO','LEGO COMPANY','3-12',525,856,46)


go

create procedure HeavyToys
as 
select * from toys
where Netweight >500
go

create procedure PriceIncreasecho
as 
select * from toys
update toys
set  UnitPrice = UnitPrice + 10
go

create procedure QtyOnHand
as 
select * from toys
update toys
set QtyOnHand = QtyOnHand - 5
go

exec SP_helptext 'HeavyToys'
go

exec SP_helptext 'PriceIncrease'
go

exec SP_helptext 'QtyOnHand'
go

select OBJECT_DEFINITION ( OBJECT_ID('HeavyToys'))
go

select OBJECT_DEFINITION ( OBJECT_ID('PriceIncrease'))
go

select OBJECT_DEFINITION ( OBJECT_ID('QtyOnHand'))
go


SELECT definition FROM sys.sql_modules WHERE object_id = OBJECT_ID('HeavyToys')
go

SELECT definition FROM sys.sql_modules WHERE object_id = OBJECT_ID('PriceIncrease')
go

SELECT definition FROM sys.sql_modules WHERE object_id = OBJECT_ID('QtyOnHand');
go

exec sp_depends 'HeavyToys'
go

exec sp_depends 'PriceIncrease'
go

exec sp_depends 'QtyOnHand'
go

alter procedure PriceIncreace as
update Toys Set UnitPrice = UnitPrice + 10000
go
select * from Toys 
go

alter procedure QtyOnHand as
select * from Toys 
update Toys 
set QtyOnHand = QtyOnHand - 5
go
select * from Toys 
go

create Procedure SpecificPriceIncrease as
update Toys set UnitPrice = UnitPrice + QtyOnHand
go
select * from Toys 
go

alter procedure SpecificPriceIncrease 
	@number int output
as 
update Toys set UnitPrice = UnitPrice + QtyOnHand
select ProductCode, Name, UnitPrice as Price, QtyOnHand from Toys
where QtyOnHand >0
select @number = @@ROWCOUNT
go
declare @num int 
Exec SpecificPriceIncrease
@num output
print @num

alter procedure SpecificPriceIncrease 
@number int output
as
update Toys set UnitPrice = UnitPrice + QtyOnHand
select ProductCode, Name, UnitPrice 
as Price, QtyOnHand 
from Toys 
where QtyOnHand > 0
select @number = @@ROWCOUNT
exec HeavyToys

drop procedure SpecificPriceIncrease
go