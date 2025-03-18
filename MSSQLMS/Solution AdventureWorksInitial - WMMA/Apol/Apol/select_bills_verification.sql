USE Apol;

SELECT FORMAT( SUM(Facts.bills), 'C', 'en-US') AS TotalIngresos

FROM Facts.facts AS Facts
	
INNER JOIN Countries.countries AS C
	ON Facts.countryFK = C.idPK
	
WHERE 
	C.codeCountry = 'ARG'

	AND YEAR(Facts.date) = 2017