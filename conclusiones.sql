/*
==========================================================
 Archivo: conclusiones.sql
 Descripción: Consultas clave y conclusiones obtenidas
 Proyecto: Base de Datos Tienda (Clientes, Órdenes, Productos)
 Autor: [Tu nombre o usuario de GitHub]
 Fecha: [Fecha actual]
==========================================================
*/

/*
----------------------------------------------------------
 1. Listar todos los clientes que han realizado órdenes, 
    junto con los productos que han comprado.
----------------------------------------------------------
*/
SELECT 
    c.nombre AS cliente, 
    p.nombre AS producto, 
    o.cantidad, 
    o.fecha
FROM 
    ordenes o
INNER JOIN 
    clientes c ON o.id_cliente = c.id_cliente
INNER JOIN 
    productos p ON o.id_producto = p.id_producto;


/*
----------------------------------------------------------
 2. Listar todos los clientes que NO han realizado ninguna orden.
----------------------------------------------------------
*/
SELECT 
    c.nombre
FROM 
    clientes c
LEFT JOIN 
    ordenes o ON c.id_cliente = o.id_cliente
WHERE 
    o.id_orden IS NULL;


/*
----------------------------------------------------------
 3. Listar todos los productos que NO se han vendido.
----------------------------------------------------------
*/
SELECT 
    p.nombre
FROM 
    productos p
LEFT JOIN 
    ordenes o ON p.id_producto = o.id_producto
WHERE 
    o.id_orden IS NULL;


/*
----------------------------------------------------------
 4. Total de productos comprados por cada cliente.
----------------------------------------------------------
*/
SELECT 
    c.nombre, 
    SUM(o.cantidad) AS total_comprado
FROM 
    clientes c
LEFT JOIN 
    ordenes o ON c.id_cliente = o.id_cliente
GROUP BY 
    c.nombre;


/*
----------------------------------------------------------
 5. Total de ingresos generados por cada producto.
----------------------------------------------------------
*/
SELECT 
    p.nombre, 
    SUM(o.cantidad * p.precio) AS total_ingresos
FROM 
    productos p
INNER JOIN 
    ordenes o ON p.id_producto = o.id_producto
GROUP BY 
    p.nombre;


/*
----------------------------------------------------------
 6. Órdenes realizadas, incluyendo cliente, producto, 
    cantidad y fecha.
----------------------------------------------------------
*/
SELECT 
    o.id_orden,
    c.nombre AS cliente,
    p.nombre AS producto,
    o.cantidad,
    o.fecha
FROM 
    ordenes o
INNER JOIN 
    clientes c ON o.id_cliente = c.id_cliente
INNER JOIN 
    productos p ON o.id_producto = p.id_producto
ORDER BY 
    o.fecha;


/*
----------------------------------------------------------
 CONCLUSIONES DEL PROYECTO:
 
 - La base de datos relacional permite analizar de forma clara la relación entre clientes, productos y órdenes.
 - Se puede identificar fácilmente:
    ✅ Qué clientes han comprado productos.
    ✅ Qué productos son los más vendidos o no vendidos.
    ✅ Clientes inactivos para posibles estrategias de venta.
    ✅ Ingresos generados por producto.
 - Se practicaron consultas fundamentales: SELECT, JOIN, filtros, funciones de agregación.
 - Este ejercicio refuerza habilidades clave para roles de Administrador de Bases de Datos.
----------------------------------------------------------
*/
