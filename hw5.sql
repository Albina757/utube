--Вывести ко-во поставщиков не из UK и не из China
SELECT count(*)
FROM Suppliers
where country not in ("uk", "china")

--Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT AVG(Price), MAX(Price), MIN(Price), Count(*) FROM Products
where categoryID in (3,5)

--Вывести общую сумму проданных товаров

SELECT SUM(Products.Price * OrderDetails.Quantity)
FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID

--Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)
SELECT OrderID, CustomerName.Customers, Country.Customers, LastName.Employees, ShipperName.Shippers 
FROM Orders
JOIN Customers ON Orders.CustomerID=Customers.CustomerID
JOIN Employess ON Orders.EmployeeID=.EmployeesEmployeeID
JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID

--Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT SUM(OrderDetails.Quantity * Products.Price) 
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID= Products.ProductID
JOIN Orders ON OrderDetails.OrderID=Orders.OrderID
JOIN Customers ON Customers.CustomerID=Orders.CustomerID
WHERE
Customers.Country = 'Germany'


