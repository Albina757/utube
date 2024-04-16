SELECT ProductName, Price*1.06 
FROM Products
where CategoryId not in (2,4) 
and 
SupplierID not in (2,3)
AND Price between 20 and 90;

SELECT * FROM Customers
WHERE NOT Country = "Germany"
AND CustomerName not like '%t';
SELECT ProductName, Price*0.2 FROM Products
WHERE Price >=10
ORDER BY Price Asc
LIMIT 2

