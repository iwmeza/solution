USE AdventureWorks2022;

SELECT * FROM Sales.SalesTerritory;

/* --------------------------------------------------------------------------------------------------------------*/

SELECT [Name], [CountryRegionCode], [SalesLastYear] FROM Sales.SalesTerritory;

/* --------------------------------------------------------------------------------------------------------------*/

SELECT 
	[Name] AS Nombre, 
	[CountryRegionCode] AS Pais, 
	[SalesLastYear] AS Ventas 

FROM Sales.SalesTerritory;

/* --------------------------------------------------------------------------------------------------------------*/

SELECT * FROM Sales.SalesTerritory

WHERE 
	CountryRegionCode = 'US';

/* --------------------------------------------------------------------------------------------------------------*/

SELECT 
	[Name] AS nombre, 
	[CountryRegionCode] AS pais, 
	[SalesLastYear] AS Ventas 

FROM Sales.SalesTerritory

WHERE 
	CountryRegionCode = 'US' 

OR CountryRegionCode = 'AU' 
OR CountryRegionCode = 'GB';

/* --------------------------------------------------------------------------------------------------------------*/

SELECT 
	[Name] AS nombre, 
	[CountryRegionCode] AS pais, 
	[SalesLastYear] AS Ventas 

FROM Sales.SalesTerritory

WHERE CountryRegionCode in ('US','AU', 'GB');

/* --------------------------------------------------------------------------------------------------------------*/

SELECT 
	[Name] AS nombre,
	[CountryRegionCode] AS pais, 
	[SalesLastYear] AS Ventas 

FROM Sales.SalesTerritory

WHERE 
	CountryRegionCode NOT IN ('US','AU');

/* --------------------------------------------------------------------------------------------------------------*/

SELECT 
	[Name] AS nombre, 
	[CountryRegionCode] AS pais, 
	[SalesLastYear] AS Ventas 

FROM Sales.SalesTerritory

WHERE 
	CountryRegionCode != 'US' 
	
	OR SalesLastYear > 2000000;

/* --------------------------------------------------------------------------------------------------------------*/

SELECT 
	[Name] AS Nombre, 
	[CountryRegionCode] AS País, 
	[SalesLastYear] AS Ventas 
	
FROM Sales.SalesTerritory

WHERE 
	CountryRegionCode <> 'US' 
OR
	SalesLastYear > 2000000;