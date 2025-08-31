-- Customer Purchase Behavior
SELECT 
    CustomerID,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(SalesAmount) AS TotalSpend,
    AVG(SalesAmount) AS AvgOrderValue,
    SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY CustomerID
ORDER BY TotalSpend DESC
LIMIT 10;

