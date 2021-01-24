create database congty
go
use congty
go

create table dondathang(
masodonhang int,
nguoidathang nvarchar(50),
diachi nvarchar(100),
dienthoai int,
ngaydathang datetime,
)
go

INSERT INTO dondathang VALUES (123,'Nguyen Van An','111 Nguyen Trai, Thanh Xuan,Ha Noi',987654321,11/18/09);
go
select*from dondathang
go
create table mat_hang(
tenhang nvarchar(90),
motahang varchar(90),
donvi varchar(10),
gia int,
soluong int,
thanhtien money,

)
go
INSERT INTO mat_hang VALUES ('may tinh t450','may nhap moi','chiec',1000,1,1000);
INSERT INTO mat_hang VALUES ('dien thoai nokia5670','dien thoai dang hot','chiec',200,2,400);
INSERT INTO mat_hang VALUES ('may in samsung450','may in dang e','chiec',100,1,100);
go
select*from mat_hang
go
SELECT Sum(thanhtien) AS "TongTien"
from mat_hang





