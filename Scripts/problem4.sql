SELECT sql
FROM sqlite_schema
WHERE name = 'employee';

SELECT e.employeeID, e.firstName, e.lastName, count(*) AS numberOfCarsSold
FROM employee e 
INNER JOIN sales s on e.employeeID = s.employeeID
GROUP BY e.employeeId
ORDER BY count(*) DESC, lastName ASC;