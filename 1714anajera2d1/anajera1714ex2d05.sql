SELECT        Invoice.InvoiceDate, Receipt.ReceiptDate, Invoice.invoiceID, Person.LastName, Person.FirstName, Receipt.Amount, Apartment.BuildingId, Apartment.ApartmentNum
FROM            Invoice INNER JOIN
                         Receipt ON Invoice.invoiceID = Receipt.InvoiceId INNER JOIN
                         Apartment ON Invoice.ApartmentId = Apartment.ApartmentId CROSS JOIN
                         Person