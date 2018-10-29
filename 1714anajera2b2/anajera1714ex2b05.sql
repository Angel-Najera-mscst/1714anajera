SELECT        MIN(Rent) AS Expr1
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 2)