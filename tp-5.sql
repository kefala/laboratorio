/*
Listar los nombres de los clientes que tienen asignado el vendedor Alberto Juarez.
*/
SELECT * FROM clientes 
WHERE clientes.representante = (SELECT empleados.numemp FROM empleados WHERE empleados.nombre = 'Alberto Juarez');

/*
Listar los vendedores (numemp, nombre, y nº de oficina) que trabajan en oficinas que tienen ventas superiores a su objetivo.
*/
SELECT * FROM empleados 
WHERE oficina = 
(SELECT oficinas.oficina FROM oficinas WHERE objetivo < ventas AND empleados.oficina = oficinas.oficina);


/*
Listar los vendedores que no trabajan en oficinas dirigidas por el empleado 108.
*/
SELECT * 
FROM empleados 
WHERE empleados.oficina = 
(SELECT oficinas.oficina FROM oficinas WHERE oficinas.dir != 108 AND oficinas.oficina = empleados.oficina);

/*
Listar los productos (idfab, idproducto y descripción) para los cuales no se ha recibido ningún pedido de $500 o más.
*/


/*
Listar los clientes asignados a Elsa Bustillo que no han remitido un pedido superior a $400.
*/


/*
Listar las oficinas en donde haya un vendedor cuyas ventas representen más del 55% del objetivo de su oficina.
*/


/*
Listar las oficinas en donde todos los vendedores tienen ventas que superan al 50% del objetivo de la oficina.
*/


/*
Listar las oficinas que tengan un objetivo mayor que la suma de las cuotas de sus vendedores.
*/


