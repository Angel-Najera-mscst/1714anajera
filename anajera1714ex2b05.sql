SELECT        Rent, LEAST(*) AS Expr1
FROM            Apartment
WHERE        (BuildingId = 2)