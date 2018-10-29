SELECT        Invoice.InvoiceDate, Invoice.invoiceID, Apartment.TenantId, Apartment.BuildingId, Apartment.ApartmentNum
FROM            Apartment INNER JOIN
                         Person ON Apartment.TenantId = Person.TenantId INNER JOIN
                         Invoice ON Apartment.ApartmentId = Invoice.ApartmentId CROSS JOIN
                         Receipt