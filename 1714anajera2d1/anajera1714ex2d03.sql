SELECT        Person.LastName, Person.FirstName, Invoice.invoiceID, Invoice.InvoiceDate, LineItem.Description, LineItem.Amount, Apartment.ApartmentNum
FROM            Person INNER JOIN
                         Apartment ON Person.TenantId = Apartment.TenantId CROSS JOIN
                         LineItem CROSS JOIN
                         Invoice
WHERE        (Apartment.BuildingId = 1)