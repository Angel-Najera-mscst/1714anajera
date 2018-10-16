SELECT        COUNT(*) AS Buildings, City
FROM            Building
GROUP BY City
HAVING        (City = N'Winona')