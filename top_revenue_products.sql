-- Top Selling Products (by Revenue)
SELECT 
    ProductName, 
    SUM(SalesAmount) AS TotalRevenue
FROM Sales
GROUP BY ProductName
ORDER BY TotalRevenue DESC
LIMIT 10;
