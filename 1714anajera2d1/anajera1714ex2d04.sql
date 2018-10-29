SELECT        Apartment.BuildingId, Apartment.ApartmentId, Person.LastName, Person.FirstName, Invoice.invoiceID, Invoice.InvoiceDate, SUM(LineItem.Invoice) AS Expr1
FROM            Apartment INNER JOIN
                         Person ON Apartment.TenantId = Person.TenantId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId CROSS JOIN
                         LineItem
GROUP BY Apartment.BuildingId, Apartment.ApartmentId, Person.LastName, Person.FirstName, Invoice.invoiceID, Invoice.InvoiceDate