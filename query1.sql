SELECT DISTINCT
	customers.LastName,
	customers.Email
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId
WHERE customers.LastName is NOT NULL
	AND customers.Email is NOT NULL;
