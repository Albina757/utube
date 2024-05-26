--Вывести стоимость заказа 10258
SELECT SUM(OrderDetails.Quantity * Products.Price)
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID=Products.ProductID
WHERE OrderID=10258

--Вывести кол/распределение заказов по клиентам (проекция: имяклиента, ко-возаказов)
SELECT Count(*), Customers.CustomerName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
Group By Orders.CustomerID

--Вывести кол/распределение заказов по менеджерам (проекция: фамилияменеджера, ко-возаказов)

SELECT Count(*), Employees.LastName
FROM Orders
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
Group By Orders.EmployeeID

--Вывести минимальную стоимость товаров для каждой категории (проекция: названиекатегории, минстоимость_товаров)

SELECT MIN(Price), Categories.CategoryName
JOIN Categories ON Products.CategoryID = Categories.CategoryID
FROM Products
Group By Categories.CategoryID

--Вывести данные о заказах (проекция: номерзаказа, стоимостьзаказа)

SELECT SUM(OrderDetails.Quantity * Products.Price), OrderID
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderID

--Вывести доход каждого менеджера за весь период, исходя из ставки в 5% от суммы его заказов (проекция: фамилия_менеджера, доход)
SUM(OrderDetails.Quantity * Products.Price) * .05
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.EmployeeID