SELECT        Person.LastName, Person.FirstName, Apartment.ApartmentNum, Apartment.TenantId, Building.City, Building.BuildingId, Building.BuildingName
FROM            Person INNER JOIN
                         Apartment ON Person.TenantId = Apartment.TenantId INNER JOIN
                         Building ON Apartment.BuildingId = Building.BuildingId