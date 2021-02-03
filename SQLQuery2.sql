use AdventureWorks2019
go

create table Employee
(
	EmployeeID int primary key,
	Name varchar(100),
	Tel char(11),
	Email varchar(30)
)
go

create table Groupss
(
	GroupID int primary key,
	GroupName varchar(30),
	LeaderID int,
	ProjectID int foreign key references Project(ProjectID) on update cascade
)
go

create table Project
(
	ProjectID int primary key,
	ProjectName varchar(30),
	StartDate datetime,
	EndDate datetime,
	Period int,
	Cost money
)
go
create table GroupDetail
(
	GroupID int foreign key references Groupss(GroupID) on update cascade,
	EmployeeID int foreign key references Employee(EmployeeID) on update cascade,
	Status char(20),
)
go

--2
insert into Employee(EmployeeID,Name,Tel,Email)
values  (12,'aaa','0965874531','a@gmail.com'),
		(13,'bbb','0964527389','b@gmail.com'),
		(14,'ccc','0954974613','c@gmail.com'),
		(15,'ddd','0984671235','d@gmail.com'),
		(16,'eee','0984671345','e@gmail.com')
go

insert into Groupss(GroupID,GroupName,LeaderID)
values  (123,'Nhom 1',12)
go

insert into Project(ProjectID,ProjectName,StartDate,EndDate,Period,Cost)
values  (999,'Chinh phu dien tu',01/01/21,01/03/21,3,1000000000)
go

insert into GroupDetail(Status)
values ('Dang lam')

--3
select Name from Employee go
select Name from Employee join Project on  ProjectName='Chinh phu dien tu'
select COUNT(EmployeeID)from Employee join Groupss on GroupName='Nhom 1'
select * from Employee join Groupss on LeaderID=EmployeeID
select GroupID,EmployeeID from GroupDetail join Project on StartDate<12/10/10
select GroupID,EmployeeID from GroupDetail where Status='sap lam'
select GroupID,EmployeeID from GroupDetail where Status='da lam'

--4


--5
create proc tanggia
as begin
select * from Project
update Project set Cost=Cost*1.1 where Cost<2000
end

create proc caub
as
select * from Project
join GroupDetail on Status='sap lam'
go

create proc cauc
as
select * from Project
join GroupDetail on Status='da lam'
go

--6
create unique index IX_Group
on GroupDetail(GroupID,EmployeeID)
go

create index IX_Project
on Project(StartDate,EndDate)
go

--7
create view ya as
select GroupID,EmployeeID
from GroupDetail
where Status='dang lam'
go

create view yb as
select Name,GroupName,ProjectName,Status
from Employee,Groupss,Project,GroupDetail
go