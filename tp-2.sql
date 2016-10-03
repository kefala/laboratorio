/*
Listar todos los productos indicando idfab, idproducto, descripcion, precio y precio con IVA incluido (es el precio más el 16%)
*/
SELECT idfab, idproducto, descripcion, precio, (precio*1.21) AS iva FROM productos;

/*
De cada pedido mostrar: numpedido producto, cantidad, precio unitario y total.
*/
SELECT numpedido, producto, cant, importe, (importe*cant) AS total FROM pedidos;

/*
Calcular cuántos días lleva trabajando cada empleado en la empresa.
*/
SELECT nombre, TIMESTAMPDIFF(day, contrato, NOW()) AS 'dias en la empresa' FROM empleados;

/*
Listar los clientes agrupados por representante.
*/
SELECT COUNT(nombre) as clientes, representate
FROM clientes
GROUP BY representate
ORDER BY clientes DESC;

/*
Mostrar las cinco líneas de pedido más caras.
*/
SELECT * 
FROM pedidos 
ORDER BY importe DESC
LIMIT 5;

SELECT TOP 5 * 
FROM pedidos 
ORDER BY importe DESC;
/*
Reformar el para ver únicamente las 5 líneas de pedido de menor precio unitario.
*/
SELECT * 
FROM productos
ORDER BY precio ASC
LIMIT 5;

SELECT TOP 5 * 
FROM productos
ORDER BY precio ASC;
/*
Mostrar toda la información de los pedidos de abril.
*/

SELECT *
FROM pedidos
WHERE DATE_FORMAT(fechapedido, '%c') = 4;
/*
Listar los números de empleados que tienen una oficina asignada.
*/

SELECT count(*) AS empleados, oficina
FROM empleados
WHERE oficina IS NOT NULL
GROUP BY oficina;
/*
Listar los empleados de nombre Luis.
*/
SELECT *
FROM empleados
WHERE nombre LIKE 'Luis%';

/*
Listar los productos que terminen con a.
*/

SELECT *
FROM productos
WHERE descripcion LIKE '%a';
