create database BookLibrary
go
use BookLibrary
go
create table Book(
BookCode int ,
BookTitle varchar(100) NOT NULL,
Author varchar(50) NOT NULL,
Edition int ,
BookPrice money,
Copies int,
constraint BookCode PRIMARY KEY(BookCode)
)
go
INSERT INTO Book VALUES (11,'TOAN','tien',10, 20, 50);
	INSERT INTO Book VALUES (12,'VAN','hoa',11, 30, 60);
	INSERT INTO Book VALUES (13,'LS','HOANG',12, 40, 70);
	INSERT INTO Book VALUES (14,'VL','NGoc',13, 50, 80);
	INSERT INTO Book VALUES (15,'HOA','PHUC',14, 60, 90);
	INSERT INTO Book VALUES (16,'SINH','CHUNG',15,70, 100);
	GO

	SELECT * FROM Book
	GO

create table Member(
MemberCode int,
Name varchar(50) NOT NULL,
Address varchar(100) NOT NULL,
PhoneNumber int,
constraint MemberCode PRIMARY KEY(MemberCode)
)
go
INSERT INTO Member VALUES (1, 'Tien', 'HANOI', 0344047379);
	INSERT INTO Member VALUES (2, 'HOA', 'HANOI1', 0345047379);
	INSERT INTO Member VALUES (3, 'HIEU', 'HANOI2', 0346047379);
	INSERT INTO Member VALUES (4, 'Ngoc', 'HANOI3', 0347047379);
	GO

	SELECT * FROM Member
	GO

create table IssueDetails(
BookCode int, 
MemberCode int, 
IssueDate datetime, 
ReturnDate datetime,
CONSTRAINT fk FOREIGN KEY (BookCode) REFERENCES Book(BookCode),
CONSTRAINT ak FOREIGN KEY (BookCode) REFERENCES Member(MemberCode)
)
go
INSERT INTO IssueDetails VALUES(11, 1, 11,32);
	INSERT INTO IssueDetails VALUES(12, 2, 12,54);
	INSERT INTO IssueDetails VALUES(13, 3, 13,68);
	INSERT INTO IssueDetails VALUES(14, 4, 14,89);

	GO 

alter table IssueDetails
drop CONSTRAINT fk,
CONSTRAINT ak

alter table Member
drop constraint MemberCode

alter table Book
drop constraint BookCode

alter table IssueDetails
add constraint MemberCode PRIMARY KEY(MemberCode),
constraint PhoneNumber PRIMARY KEY(PhoneNumber)

alter table Book
add constraint BookCode PRIMARY KEY (BookCode),
constraint BookPrice CHECK (BookPrice <200 and BookPrice>0)

alter table IssueDetails
add CONSTRAINT fk FOREIGN KEY (BookCode) REFERENCES Book(BookCode),
CONSTRAINT ak FOREIGN KEY (BookCode) REFERENCES Member(MemberCode)

alter table IssueDetails
alter column  MemberCode int NOT NULL

alter table IssueDetails
alter column  BookCode int NOT NULL

alter table IssueDetails
add constraint pk primary key( BookCode, MemberCode)

