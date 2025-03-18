USE Apol;

SELECT P.name AS Nombre, C.name AS Categoría

FROM Products.products AS P

INNER JOIN Categories.categories AS C

	ON C.idPK = P.categoryFK