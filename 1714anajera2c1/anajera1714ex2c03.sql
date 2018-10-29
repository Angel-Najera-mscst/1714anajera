SELECT        Building.BuildingId, Building.BuildingName, AVG(Apartment.Rent) AS Expr1
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId
GROUP BY Building.BuildingId, Building.BuildingName