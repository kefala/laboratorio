/*
Listar las oficinas del este indicando su número, ciudad, números y nombres de sus empleados. Hacer una versión en la que aparezcan sólo las que tienen empleados y otra en la que aparezcan todas.
*/
SELECT oficinas.*, empleados.* FROM oficinas INNER JOIN empleados ON oficinas.oficina = empleados.oficina WHERE oficinas.region = "este";
SELECT oficinas.*, empleados.* FROM oficinas LEFT JOIN empleados ON oficinas.oficina = empleados.oficina WHERE oficinas.region = "este";

/*
Listar los pedidos mostrando su número, importe, nombre del cliente y el límite de crédito del cliente correspondiente.
*/
SELECT pedidos.numpedido, pedidos.importe, clientes.nombre, clientes. limitecredito FROM pedidos INNER JOIN clientes ON pedidos.clie = clientes.numcli;

/*
Listar nombre, edad cargo, oficina ciudad donde trabaja y región de cada empleado.
*/;
SELECT empleados.nombre, empleados.edad, empleados.cargo, oficinas.ciudad, oficinas.region FROM empleados INNER JOIN oficinas ON empleados.oficina = oficinas.oficina;

/*
Listar las oficinas con ventas superiores a $10.000 indicando el nombre de su director.
*/
SELECT oficinas.ciudad, empleados.nombre FROM oficinas INNER JOIN empleados ON oficinas.dir = empleados.numemp WHERE oficinas.ventas > 10000;

/*
Listar los pedidos superiores $500, con el nombre del empleado que tomó el pedido y el nombre del cliente que lo solicitó.
*/
SELECT pedidos.*, empleados.nombre, clientes.nombre FROM pedidos INNER JOIN empleados ON pedidos.rep = empleados.numemp INNER JOIN clientes ON pedidos.clie = clientes.numcli WHERE importe > 500;
/*
Listar los empleados con una cuota superior a la de su jefe, para cada empleado mostrar sus datos y el número, nombre y cuota de su jefe.
*/
SELECT empleado.nombre, empleado.numemp, empleado.cargo, jefe.cuota FROM empleados as empleado INNER JOIN empleados AS jefe ON empleado.jefe = jefe.numemp WHERE empleado.cuota > jefe.cuota;

