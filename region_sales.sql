-- Region-wise Sales Performance
SELECT 
    Region, 
    SUM(SalesAmount) AS TotalRevenue,
    SUM(Quantity) AS TotalUnitsSold
FROM Sales
GROUP BY Region
ORDER BY TotalRevenue DESC;
