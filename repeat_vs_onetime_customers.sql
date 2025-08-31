-- Repeat vs One-time Customers
SELECT 
    CASE 
        WHEN OrderCount > 1 THEN 'Repeat Customer' 
        ELSE 'One-time Customer' 
    END AS CustomerType,
    COUNT(*) AS NumCustomers
FROM (
    SELECT 
        CustomerID, 
        COUNT(DISTINCT OrderID) AS OrderCount
    FROM Sales
    GROUP BY CustomerID
) AS Sub
GROUP BY CustomerType;

