-- El INNER JOIN devuelve solo las filas que tienen coincidencias en ambas tablas.

/* 

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

LEFT JOIN
El LEFT JOIN devuelve todas las filas de la tabla izquierda (table1), y las filas coincidentes de la tabla derecha (table2). Si no hay coincidencia, devuelve NULL para las columnas de table2.

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;

RIGHT JOIN
El RIGHT JOIN es similar al LEFT JOIN, pero devuelve todas las filas de la tabla derecha (table2) y las filas coincidentes de la tabla izquierda (table1). Las filas no coincidentes en table1 tendrán valores NULL.

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

*/