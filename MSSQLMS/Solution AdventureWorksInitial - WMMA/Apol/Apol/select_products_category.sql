USE Apol;

SELECT P.name AS Nombre, C.name AS Categor�a

FROM Products.products AS P

INNER JOIN Categories.categories AS C

	ON C.idPK = P.categoryFK