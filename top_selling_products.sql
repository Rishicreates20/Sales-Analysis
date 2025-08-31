-- Top Selling Products (by Quantity)
SELECT 
    ProductName, 
    SUM(Quantity) AS TotalSold
FROM Sales
GROUP BY ProductName
ORDER BY TotalSold DESC
LIMIT 10;

