USE Apol;

DECLARE @country NVARCHAR(20), @date NVARCHAR(5), @quart NVARCHAR(2);
SET @country = 'Angola';
SET @date = '2018';
SET @quart = 'Q4';

SELECT 
	P.name AS Producto, 
	Fact.income AS Gastos, 
	Fact.bills AS Ventas,
	C.countryName AS País,
	CC.name AS Continente,
	Q.cod AS Cuatrimestre,
	Fact.date AS Año

FROM Facts.facts AS Fact

INNER JOIN Products.products AS P
	ON P.idPK = Fact.productFK

INNER JOIN Countries.countries AS C
	ON C.idPK = Fact.countryFK

INNER JOIN Quarters.quarters AS Q
	ON Q.idPK = Fact.quartFK

INNER JOIN Continents.continents AS CC
	ON CC.idPK = C.continentFK

WHERE 
		C.countryName = @country
	AND Q.cod = @quart
	AND Fact.date = @date
