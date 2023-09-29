SELECT sql
FROM sqlite_schema
WHERE name = 'employee';

SELECT e.employeeID, e.firstName, e.lastName, count(*) AS numberOfCarsSold
FROM employee e 
INNER JOIN sales s on e.employeeID = s.employeeID
GROUP BY e.employeeId, e.firstName, e.lastName
ORDER BY count(*) DESC, lastName ASC;

SELECT e.employeeID, e.firstName, e.lastName
FROM sales s
INNER JOIN employee e 
  on s.employeeID = e.employeeID

SELECT e.employeeID, e.firstName, e.lastName, count(*) AS numberOfCarsSold
FROM sales s
INNER JOIN employee e on e.employeeID = s.employeeID
GROUP BY e.employeeId, e.firstName, e.lastName
ORDER BY count(*) DESC, lastName ASC;