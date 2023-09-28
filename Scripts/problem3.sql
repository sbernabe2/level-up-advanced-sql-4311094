SELECT sql
FROM sqlite_schema
WHERE name = 'customer';

SELECT c.customerID, s.salesId
FROM customer c
FULL OUTER JOIN sales s ON c.customerId = s.customerId
;

-- If you do not use a full outer join, have to do
-- one inner join, one left join, and one right join and
-- union them together. (left and right: where customer/salesID is null)