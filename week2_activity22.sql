SELECT @@VERSION

USE AdventureWorks2014
go

SELECT * 
from person.Person

SELECT *
FROM Person.Person
ORDER by LastName

SELECT FirstName, LastName
FROM Person.Person

SELECT *
FROM Person.Person
where FirstName = 'Gail' 

-- single quotes only

SELECT *
FROM Production.Product

SELECT *
FROM Production.Product
where size = 'S'

SELECT *
FROM Production.Product
WHERE DaysToManufacture = 1

use winery
GO

SELECT *
FROM region

SELECT *
FROM winery

SELECT *
FROM region, winery

SELECT *
FROM region, winery
where region.RegionID = winery.RegionID

USE AdventureWorks2012
GO

SELECT *
FROM Production.Product

SELECT *
FROM Production.ProductInventory

SELECT *
FROM Production.Location

SELECT *
FROM Production.Product, production.ProductInventory
WHERE Production.Product.ProductID = Production.ProductInventory.ProductID 
and Production.ProductInventory.Quantity < 100

select production.product.name, production.ProductInventory.Quantity 
from production.Product, production.productInventory
where production.Product.ProductID = production.ProductInventory.ProductID
and production.ProductInventory.Quantity < 100

select production.product.name, production.ProductInventory.Quantity 
from production.Product, production.productInventory
where production.Product.ProductID = production.ProductInventory.ProductID
and production.ProductInventory.Quantity < 100
ORDER BY production.product.name


-- nikename is btter for long table selection
SELECT Production.Product.Productnumber, Production.Product.name, production.product.Safetystocklevel, production.ProductInventory.Quantity, production.location.name
FROM production.Product, production.productInventory, Production.Location
WHERE production.Product.ProductID = production.ProductInventory.ProductID
and production.ProductInventory.Quantity < production.Product.Safetystocklevel
and production.ProductInventory.LocationID = Production.Location.LocationID
ORDER BY Production.Product.Productnumber


select p.Productnumber, p.name, p.safetystocklevel, i.quantity, l.Name
from production.product p, production.ProductInventory i, Production.Location l  -- p, i, l as nikename
where p.productid = i.ProductID
and i.LocationID = l.LocationID
and i.quantity < p.safetystocklevel
order by p.ProductNumber

