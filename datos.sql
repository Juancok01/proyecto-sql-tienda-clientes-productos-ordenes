insert into clientes(nombre,email)
values
('Juan Pérez','juan@example.com'),
('María Gómez','maria@example.com'),
('Carlos Ruiz', 'carlos@example.com');

insert into productos (nombre, precio)
values
('Laptop', 1500000),
('Mouse', 35000),
('Teclado', 45000);

insert into ordenes (id_cliente, id_producto, cantidad)
values
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(1, 2, 3);
