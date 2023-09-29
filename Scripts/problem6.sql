SELECT e.employeeID, e.firstName, e.lastName, count(*) as NumCarsSold
FROM employee e 
INNER JOIN sales s on e.employeeID = s.employeeID
WHERE s.soldDate >= date('now', 'start of year')
GROUP BY e.employeeID
HAVING count(*) > 5
ORDER BY count(*) desc
;