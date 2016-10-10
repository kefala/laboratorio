/*
¿Cuál es el promedio de ventas y de cuota de los empleados?
*/
SELECT AVG(pedidos.importe) as 'promedio de ventas', AVG(empleados.cuota) as 'promedio de cuota' FROM pedidos, empleados;

/*
Hallar el importe medio de los pedidos, el importe total y el máximo. Calcular también el  precio unitario máximo.
*/
SELECT AVG(pedidos.importe) as 'media', SUM(pedidos.importe) as 'total', MAX(pedidos.importe) as 'maximo' FROM pedidos;

/*
Encontrar el precio máximo y el precio mínimo de los productos del fabricante nosa.
*/
SELECT MIN(precio) as 'minimo', MAX(precio) as 'maximo' FROM productos WHERE idfab = 'nosa';

/*
Encontrar el precio máximo y el precio mínimo de los productos de cada fabricante.
*/
SELECT MIN(precio) as 'minimo', MAX(precio) as 'maximo', idfab FROM productos GROUP BY idfab;

/*
Cual es el importe total de pedidos tomados por Elsa Bustillo?
*/
SELECT SUM(pedidos.importe) as 'Total de Elsa' FROM pedidos INNER JOIN empleados ON empleados.numemp = pedidos.rep WHERE empleados.nombre = 'Elsa Bustillo';

/*
En qué fecha se realizó el primer pedido?
*/
SELECT pedidos.fechapedido FROM pedidos ORDER BY pedidos.fechapedido LIMIT 1;

/*
Cuántos pedidos hay por un monto entre $500 y $1000?
*/
SELECT * FROM pedidos WHERE importe BETWEEN 500 and 1000;

/*
Indicar cuántos empleados hay asignados a cada oficina nombrando el número de la misma y la cantidad de empleados.
*/
SELECT DISTINCT oficinas.oficina, COUNT(*) as 'CANT DE EMPLEADOS' FROM empleados INNER JOIN oficinas ON oficinas.oficina = empleados.oficina WHERE empleados.oficina IS NOT NULL GROUP BY empleados.oficina;

/*
Para cada empleado, obtener su número, nombre, e importe vendido por ese empleado a cada cliente indicando el número de cliente.
*/


/*
Para cada empleado cuyos pedidos suman más de $1500, hallar su importe medio de pedidos. En el resultado indicar el número de empleado y su importe medio de pedidos.
*/

/*
Saber cuántas (no cuales) oficinas tienen empleados con ventas superiores a su objetivo.
*/

/*
Listar de cada producto, su descripción, precio y cantidad total pedida, incluyendo sólo los productos cuya cantidad total pedida sea superior al 75% del stock; y ordenado por cantidad total pedida.
*/

