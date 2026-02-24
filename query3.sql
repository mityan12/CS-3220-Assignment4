SELECT 
	customers.State, 
	COUNT(DISTINCT customers.CustomerId) AS TotalUniqueC
	FROM customers
	WHERE customers.State is NOT NULL
	GROUP BY customers.State
	ORDER BY customers.State ASC;
