SELECT        Building.BuildingName, Building.City, SUM(Apartment.Rent) AS Expr1
FROM            Apartment INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId
GROUP BY Building.BuildingName, Building.City
HAVING        (Building.City = N'MN')