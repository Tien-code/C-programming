create database phan4
go
use phan4
go
--Bang class
create table Class
(
ClassCode varchar(10) primary key,
HeadTeacher varchar(30),
Room varchar(30),
TimeSlot char(5),
CloseDate datetime
)
go
Insert into Class (ClassCode,HeadTeacher,Room,TimeSlot,CloseDate) values('T2010A','Dang Kim Thi','Class 1','M','2022/6/6')
Insert into Class (ClassCode,HeadTeacher,Room,TimeSlot,CloseDate) values('T2010B','Kim Thi Dang','Class 2','G','2021/6/5')
Insert into Class (ClassCode,HeadTeacher,Room,TimeSlot,CloseDate) values('T2010C','Nguyen Van Tuan','Class 3','A','2020/4/6')
Insert into Class (ClassCode,HeadTeacher,Room,TimeSlot,CloseDate) values('T2010D','Ngo Thi Thuy','Class 4','G','2019/6/2')
Insert into Class (ClassCode,HeadTeacher,Room,TimeSlot,CloseDate) values('T2010E','Nguyen Thi Hong','Class 5','M','2020/2/6')
GO
select * from Class
go
drop table Class
go
--Bang Student
create table Student(
RollNo varchar(10) primary key,
ClassCode varchar(10),
constraint mk foreign key (ClassCode) references Class(ClassCode),
FullName varchar(30),
Male bit,
BirthDate datetime,
Address varchar(30),
Provice char(2),
Email varchar(30)
)
go
insert into Student(RollNo,ClassCode,FullName,Male,BirthDate,Address,Provice,Email) VALUES (11,'T2010A','Ngo Chi Thanh Dat',1,'2002/11/22','Bac Ninh','BN','dat3578@gmail.com')
insert into Student(RollNo,ClassCode,FullName,Male,BirthDate,Address,Provice,Email) VALUES (22,'T2010B','Nguyen Quang Tuan',1,'2002/6/6','Vong Nguyet','BN','tuangur9e@gmail.com')
insert into Student(RollNo,ClassCode,FullName,Male,BirthDate,Address,Provice,Email) vALUES (33,'T2010C','Nguyen Thi Anh Tam',0,'2002/11/4','Bac Ninh','BN','tamyeuai@gmail.com')
insert into Student(RollNo,ClassCode,FullName,Male,BirthDate,Address,Provice,Email) VALUES (44,'T2010D','Do Thi Thanh Thao',0,'2002/9/29','Bac Ninh','BN','thaocute@gmail.com')
insert into Student(RollNo,ClassCode,FullName,Male,BirthDate,Address,Provice,Email) VALUES (55,'T2010E','Nguyen Van Thanh',1,'2002/1/29','Mai Ha','BN','thanhkun@gmail.com')
go
select * from Student
GO
DROP TABLE Student
GO
--Bang Subjects 
create table Subjects (
SubjectCode varchar(10) primary key,
SubjectName varchar(40),
WMark bit,
PMark bit,
WTest_per int,
PTest_per int
)
go
INSERT INTO Subjects(SubjectCode,SubjectName,WMark,PMark,WTest_per,PTest_per) values ('LBEP','HTML & CSS',1,1,80,10)
INSERT INTO Subjects(SubjectCode,SubjectName,WMark,PMark,WTest_per,PTest_per) values ('EPC','Jquery',0,1,90,10)
INSERT INTO Subjects(SubjectCode,SubjectName,WMark,PMark,WTest_per,PTest_per) values ('CF','React',1,0,100,10)
INSERT INTO Subjects(SubjectCode,SubjectName,WMark,PMark,WTest_per,PTest_per) values ('JAVAL','Ungular',0,1,80,10)
INSERT INTO Subjects(SubjectCode,SubjectName,WMark,PMark,WTest_per,PTest_per) values ('REG','Bosstrap',0,1,80,10)
go
select * from Subjects
go
drop table Subjects
go
--Bang Mark
create table Mark(
RollNo varchar(10),
constraint huhu foreign key (RollNo) references Student(RollNo),
SubjectCode varchar(10),
constraint hihi foreign key (SubjectCode) references Subjects(SubjectCode),
WMark float,
PMark float,
Mark float
)
go
insert into Mark(RollNo,SubjectCode,WMark,PMark,Mark) values (11,'LBEP',40,3,41.5)
insert into Mark(RollNo,SubjectCode,WMark,PMark,Mark) values (22,'EPC',65,7,36.0)
insert into Mark(RollNo,SubjectCode,WMark,PMark,Mark) values (33,'CF',20,6,35.5)
insert into Mark(RollNo,SubjectCode,WMark,PMark,Mark) values (44,'JAVAL',70,8,39.0)
insert into Mark(RollNo,SubjectCode,WMark,PMark,Mark) values (55,'REG',80,10,45.0)
go 
select * from Mark
go 
drop table Mark
go

--2,T?o m?t khung nhìn ch?a danh sách các sinh viên ?ã có ít nh?t 2 bài thi (2 môn h?c khác nhau).
create view V_Subject as
select s.SubjectCode,s.SubjectName,p.PMark,p.WMark
from Subjects s
join Mark as p on p.SubjectCode=s.SubjectCode
where p.PMark < 6 OR P.WMark <50;
go
select * from V_Subject
go
drop view V_Subject
GO

--3,T?o m?t khung nhìn ch?a danh sách t?t c? các sinh viên ?ã b? tr??t ít nh?t là m?t môn.
 create view V_Student as
 select s.RollNo,s.FullName,p.PMark,p.WMark
 from Student s 
 join Mark as p on  p.RollNo=s.RollNo
 where p.PMark <= 3 or p.WMark <=40 ;
go
select * from V_Student
GO
DROP VIEW V_Student
GO
 --4,T?o m?t khung nhìn ch?a danh sách các sinh viên ?ang h?c ? TimeSlot G.
 create view V_Time as
 select t.TimeSlot,t.ClassCode,p.FullName
 from Class t
 JOIN Student as p on p.ClassCode=t.ClassCode
 where  TimeSlot ='G' ;
 go
 select * from V_Time
 GO 
 DROP vIEW V_Time
 GO
 --5,TAo m?t khung nhìn ch?a danh sách các giáo viên có ít nh?t 3 h?c sinh thi tr??t ? b?t c? môn nào.
 CREATE VIEW V_Teacher as
 select c.ClassCode,c.HeadTeacher,s.FullName
 from Class c
 join Student as s on s.ClassCode=c.ClassCode
go
select * from V_Teacher
go
drop view V_Teacher
go
 --6 T?o m?t khung nhìn ch?a danh sách các sinh viên thi tr??t môn EPC c?a t?ng l?p. Khung nhìn 
 --này ph?i ch?a các c?t: Tên sinh viên, Tên l?p, Tên Giáo viên, ?i?m thi môn EPC. 