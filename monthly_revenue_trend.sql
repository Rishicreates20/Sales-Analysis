-- Monthly Revenue Trend
SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(SalesAmount) AS MonthlyRevenue
FROM Sales
GROUP BY Month
ORDER BY Month;
