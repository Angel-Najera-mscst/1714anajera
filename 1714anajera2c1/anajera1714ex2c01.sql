SELECT        State, City, COUNT(BuildingId) AS Expr1
FROM            Building
GROUP BY State, City