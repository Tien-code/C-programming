--tao khung nhin lay ra thong tin co ban trong person.contact
create view v_contact_info as
select firstname, middlename, lastname
from person.person
go

--tao khung nhin lay ra thong tin ve nhan vien 
create view v_emloyee_contact as 

select p.firstname, p.lastname, e.businessentityid, e.hiredate

from humanresources.employee e

join person.person as p on e.businessentityid = p.businessentityid;

go

--xem mot khung nhin
select * from v_emloyee_contact
go

--thay doi khung nhin v_emloyee_contact bang viec them cot birthdate

alter view v_employee_contact as
select p.firstname, p.lastname, e.businessentityid, e.hiredate, e.birthdate
from humanresources.employee e
join person.person as p on e.businessentityid = p.businessentityid
where p.firstname like '%b%';
go

--xoa mot khung hinh
drop view v_contact_info
go

--xem dinh nghia khung hinh v_employee_contact
execute sp_helptext 'v_employee_contact'

--xem cac thanh phan ma khung hinh phu thuoc 
execute sp_depends 'v_employee_contact'
go

--tao khung nhinh on ma dinh nghia bi an di (khong xem dc dinh nghia khung hinh)
create view orderrejects
with encryption
as 
select purchaseorderid, receivedqty, rejectedqty,
       rejectedqty / receivedqty as rejectratio,duedate
from purchasing.purchaseorderdetail
where rejectedqty / receivedqty >0
and duedate > CONVERT(datetime,'20010630',101);

--khong xem duoc dinh nghia khung nhin v_contact_info
sp_helptext 'orderrejects'
go
-- thay doi khung nhìn them tùy ch?n check option 
alter view v_employee_contact as 
select p.firstname, p.lastname, e.businessentityid, e.hiredate
from humanresources.employee e
join person.person as p on e.businessentityid = p.businessentityid
where p.firstname like 'a%'
with check option
go
select * from v_employee_contact
--cap nhat duoc khung nhin khi firstname bat dau bang ky tu 'a'
update v_employee_contact set firstname = 'atest' where lastname ='army'
--khong cap nhat duoc khung nhin khi firstname bat dau bang ky tu 'a'
update v_employee_contact set firstname = 'bcd' where lastname ='army'
go

--phai xoa khung nhin trc 
drop view v_contact_info
go

----tao khung nhin gian do 
create view v_contact_info with schemabinding as
select firstname, middlename, lastname, emailaddress
from person.contact
go
--khong the truy van dc khung nhinh co ten v_contact_info
select * from v_contact_info
go

--tao chi muc duy nhat tren cot emailaddress tren khung nhin v_contact_info
create unique clustered index ix_contact_email
on v_contact_info(emailAddress)
go
--thuc hien doi ten khung nhin
exec sp_rename v_contact_info, v_contact_infomation
--truy van khung  nhin 
select * from v_contact_infomation
--khong the them ban ghi vao khung nhin
--vi co cot khong cho phep null trong bang contact
insert into v_contact_infomation value ('abc','def','ghi','abc@yahoo.com')
--khong the xoa ban ghi cua khung nhin v_contact_infomation
--vi bang person.contact con co cac khoa ngoai 
delete from v_contact_infomation where lastname ='gilbert' and firstname ='guy'

