use Customers_Orders;

-- 1
SELECT Customers.CustomerID, FirstName, OrderID 
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- 2
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- 3
SELECT *
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- 4
SELECT CustomerID, FirstName, 'customer' AS Role
FROM Customers
UNION
SELECT EmployeeID, FirstName, 'employee'
FROM Employees;

-- 5
SELECT Customers.CustomerID, FirstName, OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerID, FirstName, OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
ORDER BY CustomerID, OrderID;

-- 6a
SELECT A.EmployeeID, CONCAT(A.FirstName, ' ',A.LastName) AS 'Employee Name', CONCAT(B.FirstName, ' ',B.LastName) AS 'Boss Name'
FROM Employees A
INNER JOIN Employees B
ON A.BossID = B.EmployeeId;

-- 6b
SELECT A.EmployeeID, CONCAT(A.FirstName, ' ',A.LastName) AS 'Employee Name', CONCAT(B.FirstName, ' ',B.LastName) AS 'Boss Name'
FROM Employees A
LEFT JOIN Employees B
ON A.BossID = B.EmployeeId;

-- 7a
SELECT Round(AVG(salary), 2) AS 'Average Salary'
FROM Employees;

-- 7b
SELECT Round(MIN(salary), 2) AS 'Min Salary'
FROM Employees;

-- 7c
SELECT Round(MAX(salary), 2) AS 'Min Salary'
FROM Employees;

-- 7d
SELECT Round(SUM(salary), 2) AS 'Min Salary'
FROM Employees;

-- 8
SELECT CONCAT(FirstName, ' ',LastName) AS 'Boss Name'
FROM Employees
WHERE BossId IS NULL;

-- 9
SELECT CONCAT(FirstName, ' ',LastName) AS 'Employee Name', Salary
FROM Employees
WHERE BossId IS NOT NULL AND Salary >= 2500;

-- 10
SELECT CONCAT(FirstName, ' ',LastName) AS 'Employee Name'
FROM Employees
WHERE FirstName BETWEEN 'A%' AND 'L%';

-- 11
SELECT CONCAT(FirstName, ' ',LastName) AS 'Employee Name'
FROM Employees
WHERE NOT (FirstName BETWEEN 'A%' AND 'M%');

-- 12
SELECT CONCAT(FirstName, ' ',LastName) AS 'Employee Name'
FROM Employees
WHERE FirstName LIKE '%n';

-- 13
SELECT CONCAT(FirstName, ' ',LastName) AS 'Employee Name'
FROM Employees
WHERE FirstName LIKE '___';

-- 14
SELECT CONCAT(FirstName, ' ',LastName) AS 'Employee Name'
FROM Employees
WHERE FirstName LIKE '____%';

-- 15
SELECT CONCAT(FirstName, ' ',LastName) AS 'Employee Name'
FROM Employees
WHERE FirstName LIKE '_o%';

-- 16
INSERT INTO Employees (FirstName, LastName, Salary, BossID)
VALUES ('Ann', 'Smith', 2700, 4);

-- 17
UPDATE Employees
SET BossID=1
WHERE EmployeeID = 6;

-- 18
DELETE FROM Employees
WHERE EmployeeID = 6;

-- 19a
SELECT OrderID, Customers.FirstName
FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE OrderID IN (101, 102, 104)
ORDER BY OrderID ASC;

-- 19b
SELECT OrderID, Customers.FirstName
FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE OrderID = 101 OR OrderID = 102 OR OrderID = 104
ORDER BY OrderID ASC;
