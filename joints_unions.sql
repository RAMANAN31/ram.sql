SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
SELECT ID, Name FROM Table1
UNION
SELECT ID, Name FROM Table2;

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
