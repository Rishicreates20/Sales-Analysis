-- Category Performance
SELECT 
    Category, 
    SUM(SalesAmount) AS TotalRevenue,
    COUNT(DISTINCT ProductName) AS NumProducts,
    SUM(Quantity) AS TotalUnitsSold
FROM Sales
GROUP BY Category
ORDER BY TotalRevenue DESC;
