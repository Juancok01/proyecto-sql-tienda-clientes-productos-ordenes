-- Todos los clientes 
select *
from clientes;

-- Productos con precio mayor a $50.000
select nombre,
	   precio
from productos
where precio > 50000;

-- Clientes con nombre que contiene 'u' o email que termina en 's@example.com'
select nombre,
       email
from clientes
where nombre like '%u%' or email like '%s@example.com'; 

-- Actualizar email a 'juan.perez@correo.com' para Juan Pérez
update clientes
set email = 'juan.perez@correo.com'
where nombre = 'Juan Pérez';

-- Eliminar producto llamado 'Mouse'
delete from ordenes
where id_producto =( select id_producto
                     from productos
                     where nombre = 'Mouse');

delete from productos
where nombre ='Mouse';

--INNER JOIN clientes - ordenes -productos
select c.nombre,
       p.nombre, 
       o.cantidad,
       o.fecha 
from ordenes o
inner join clientes c
on o.id_cliente = c.id_cliente
inner join productos p
on o.id_producto  = p.id_producto;

--LEFT JOIN (Todos los clientes aunque no tengan órdenes)
select c.nombre,
       o.id_orden
from ordenes o
left join clientes c
on o.id_cliente = c.id_cliente;

--RIGHT JOIN (Todos los productos aunque no se hayan pedido)
select p.nombre,
       o.id_orden 
from ordenes o
right join productos p
on o.id_producto = p.id_producto;

--Mostrar todos los clientes y la cantidad total de productos que han comprado.
select c.nombre,
       sum(o.cantidad) as total_compras
from clientes c
left join ordenes o
on o.id_cliente = c.id_cliente
group by c.nombre;

--Mostrar productos que no se han vendido.
select p.nombre
from productos p
left join ordenes o
on p.id_producto = o.id_producto
where o.id_orden is null;






