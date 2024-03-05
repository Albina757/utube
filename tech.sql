SELECT ProductName, Price* .995 FROM Products;
SELECT * FROM Products
WHERE Price between 0 and 100
ORDER BY Price DESC
LIMIT 1;
SELECT * FROM Products
where CategoryID =4
order by Price asc
limit 2;

SELECT * FROM Products
order by price desc
LIMIT 1 OFFSET 4;

SELECT * FROM Products
WHERE ProductName like '%a'

