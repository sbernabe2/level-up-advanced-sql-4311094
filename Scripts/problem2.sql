SELECT sql
FROM sqlite_schema
WHERE name = 'sales';

SELECT e.firstName, e.lastName, s.salesAmount
FROM employee e
LEFT JOIN sales s on e.employeeId = s.employeeId
WHERE (s.salesAmount is NULL OR s.salesAmount = 0.00) AND e.title = 'Sales Person'
ORDER BY s.salesAmount ASC
;