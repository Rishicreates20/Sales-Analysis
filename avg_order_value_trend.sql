-- Average Order Value Over Time
SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(SalesAmount) / COUNT(DISTINCT OrderID) AS AvgOrderValue
FROM Sales
GROUP BY Month
ORDER BY Month;
