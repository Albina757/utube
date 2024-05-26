--Вывести компании-перевозчиков, которые доставили клиентам более 250 заказов (проекция: название_компании, ко-во заказов)
SELECT COUNT(*) AS total_orders, Shippers.ShipperName
FROM Orders
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY Orders.ShipperID
Having total_orders > 250

--Вывести заказы, где ко-во товаров 3 и более (проекция: номерзаказа, ко-вотовароввзаказе)
SELECT COUNT(*) AS total_orders, OrderID
FROM OrderDetails
GROUP BY OrderID
Having total_orders >=3

--Вывести минимальную стоимость товара для каждой категории, кроме категории 2 (проекция: названиекатегории, минстоимость_товара)
SELECT MIN(Price), CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Products.CategoryID
Having Not CategoryID=2 

--Вывести менеджера, который находится на 4 месте по ко-ву созданных заказов (проекция: фамилияменеджера, к-восозданных_заказов)
SELECT COUNT(*) As total_orders, Employees.LastName
FROM Orders
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Orders.EmployeeID
ORDER BY total_orders desc
 LIMIT 1 OFFSET 3

 --Вывести данные о товарах от поставщиков 4 и 8 (проекция: всеимеющиесяполя, ценасоскидкой1.5процента, ценаснаценкой0.5процента)
SELECT  ProductName, Price * 0.985 As discount_price, Price * 1.05 as markup_price, SupplierID
FROM Products
Where SupplierID in (2,4)