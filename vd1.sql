CREATE DATABASE Lab11
GO
USE Lab11
go

CREATE VIEW ProductList
AS
SELECT ProductID, Name FROM AdventureWorks2019.Production.Product

SELECT * FROM ProductList

CREATE VIEW  SalesOrderDetail
AS

SELECT pr.ProductID, pr.Name, od.UnitPrice, od.OrderQty,

od.UnitPrice * od.OrderQty as [Total Price]

FROM AdventureWorks2019.Sales.SalesOrderDetail od

JOIN AdventureWorks2019.Production.Product pr ON od.ProductID = pr.ProductID
 
 SELECT * FROM SalesOrderDetail
