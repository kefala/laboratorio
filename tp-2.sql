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
