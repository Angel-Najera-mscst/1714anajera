SELECT        Building.BuildingId, Building.BuildingName, Building.City, Apartment.ApartmentNum, Person.FirstName, Person.LastName
FROM            Building INNER JOIN
                         Apartment ON Building.BuildingId = Apartment.BuildingId INNER JOIN
                         Person ON Apartment.AdminId = Person.PersonId
ORDER BY Building.BuildingId, Building.City, Building.BuildingName, Apartment.ApartmentNum, Person.LastName, Person.FirstName