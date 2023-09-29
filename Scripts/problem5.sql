SELECT sql
FROM sqlite_schema
WHERE name = 'sales';

SELECT e.employeeID, e.firstName, e.lastName, max(salesAmount) as MostExpensiveCarSold, min(salesAmount) as LeastExpensiveCarSold
FROM employee e 
INNER JOIN sales s on e.employeeID = s.employeeID
GROUP BY e.employeeID