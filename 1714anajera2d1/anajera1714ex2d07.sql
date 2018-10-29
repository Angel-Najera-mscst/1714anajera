SELECT        Receipt.InvoiceId, Person.PersonId, Invoice.InvoiceDate, Apartment.Admin
FROM            Invoice INNER JOIN
                         Receipt ON Invoice.invoiceID = Receipt.InvoiceId INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId CROSS JOIN
                         Person