--Angel Najera
--Exercise 2F: Animal Shelter test Queries
--AnimalShelter db
--1) All Animals
SELECT        Animals.AnimalName, AnimalTypes.Type, People.FirstName
FROM            Animals INNER JOIN
                         AnimalTypes ON Animals.AnimalType_Id = AnimalTypes.Id INNER JOIN
                         People ON Animals.Id = People.Animal_Id
--2) Cash Donations
SELECT        Donations.DonationDate, People.FirstName AS Donor, People.LastName AS Donor, SUM(Donations.DonationType_Id)
FROM            Donations INNER JOIN
                         People ON Donations.Person_Id = People.Id
GROUP BY Donations.DonationDate, People.FirstName, People.LastName



--3) Total Donations for each donor
SELECT        People.FirstName, People.LastName, SUM(Donations.DonationType_Id) AS Expr1, Donations.Id
FROM            Donations INNER JOIN
                         People ON Donations.Person_Id = People.Id
GROUP BY People.FirstName, People.LastName, Donations.Id


--4) Number of Dogs for each owner
SELECT        People.Id AS Expr1, AnimalTypes.Type, People.FirstName, People.LastName
FROM            People INNER JOIN
                         AnimalTypes ON People.Id = AnimalTypes.Id
GROUP BY People.FirstName, People.LastName, People.Id, AnimalTypes.Type
HAVING        (AnimalTypes.Type = N'dogs')