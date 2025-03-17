create table clientes (
	id_cliente serial primary key,
	nombre varchar(100) not null,
	email varchar(100) unique not null
);

create table productos (
	id_producto serial primary key,
	nombre varchar(100) not null,
	precio decimal (10,3)not null
);

create table ordenes (
	id_orden serial primary key,
	id_cliente int references clientes(id_cliente),
	id_producto int references productos(id_producto),
	cantidad int not null,
	fecha date not null default current_date
);