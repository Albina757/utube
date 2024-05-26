--Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)

SELECT ProductName, Price,  CategoryName, SupplierName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID

--Вывести заказы клиентов не из France  (номерзаказа, имяклиента, страна_клиента)
SELECT OrderID, CustomerName, country
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE country != "France"

--Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT ProductName, Price AS Price_usd 
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY Price Desc
Limit 1SELECT ProductName, Price*1.08 AS Price_usd 
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY Price Desc
Limit 1

--Вывести список стран, которые поставляют морепродукты

SELECT distinct Country FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
WHERE CategoryID = 8

--Вывести два самых дорогих товара из категории Beverages из USA

SELECT * FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Country = "USA" AND CategoryID =1
ORDER BY Price Desc
LIMIT 2