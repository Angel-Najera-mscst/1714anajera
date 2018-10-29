SELECT        COUNT(BuildingId) AS Expr1, City
FROM            Building
GROUP BY City
HAVING        (City = N'MN')