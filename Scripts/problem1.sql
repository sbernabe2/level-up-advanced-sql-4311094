SELECT sql
FROM sqlite_schema
WHERE name = 'employee';

SELECT employeeId, firstName, lastName, managerId
FROM employee
LIMIT 9;

SELECT a.firstName || ' ' || a.lastName as employeeName, b.firstName || ' ' || b.lastName as managerName
FROM employee a
INNER JOIN employee b on b.managerId = a.managerId;