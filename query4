SELECT 
	customers.State, 
	COUNT (DISTINCT customers.CustomerId) as TotalUniqueCustomers
FROM customers
WHERE customers.State IS NOT NULL
GROUP BY customers.State
HAVING COUNT(DISTINCT customers.CustomerId) > 10
ORDER BY customers.State ASC;
