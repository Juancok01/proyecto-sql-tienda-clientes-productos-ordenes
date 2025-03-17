# 📊 Proyecto SQL: Base de Datos Relacional Tienda (Clientes, Órdenes, Productos)

Este proyecto es una base de datos relacional sencilla creada con **PostgreSQL** y gestionada desde **DBeaver**. Forma parte de mi ruta de aprendizaje como **Administrador de Bases de Datos Junior**, y tiene como objetivo practicar los conceptos fundamentales de SQL, incluyendo creación de tablas, inserción de datos y consultas avanzadas con JOIN.

---

## 🚀 Descripción del Proyecto

La base de datos está compuesta por **tres tablas principales** relacionadas entre sí:

- **Clientes**: Información básica de los clientes.
- **Productos**: Listado de productos disponibles para la venta.
- **Órdenes**: Registro de las compras realizadas por los clientes.

---

## 🔑 Contenido del Proyecto

| Archivo            | Descripción                                                        |
|--------------------|-------------------------------------------------------------------|
| `esquema.sql`      | Script SQL para crear las tablas y definir las relaciones.         |
| `datos.sql`        | Script con los datos de ejemplo para poblar las tablas.            |
| `consultas.sql`    | Conjunto de consultas SQL para obtener información relevante.     |
| `conclusiones.sql` | Consultas clave y conclusiones obtenidas a partir de los datos.   |

---

## 🛠️ Tecnologías Utilizadas

- **PostgreSQL**
- **DBeaver** (como cliente para gestionar la base de datos)
- **SQL** (lenguaje de consulta estructurado)

---

## 📂 Estructura de Tablas

### Tabla: `clientes`
| id_cliente | nombre         | email                  |
|------------|----------------|-----------------------|
| PK         | VARCHAR        | VARCHAR               |

### Tabla: `productos`
| id_producto | nombre         | precio    |
|-------------|----------------|-----------|
| PK          | VARCHAR        | NUMERIC   |

### Tabla: `ordenes`
| id_orden | id_cliente (FK) | id_producto (FK) | cantidad | fecha      |
|---------|------------------|------------------|----------|------------|
| PK      | REFERENCES clientes | REFERENCES productos | INT      | DATE       |

---

## ✅ Consultas Clave Incluidas

- Listado de clientes con sus órdenes y productos comprados.
- Identificación de clientes que **no han realizado órdenes**.
- Productos **no vendidos**.
- Total de productos comprados por cliente.
- Ingresos generados por cada producto.

---
  
## 💡 Conclusiones del Proyecto

-Se logró crear una base de datos relacional con integridad referencial mediante claves foráneas.

-Se realizaron consultas avanzadas usando INNER JOIN, LEFT JOIN, y RIGHT JOIN.

-Se obtuvieron insights importantes, como productos más vendidos y clientes inactivos.

-Practiqué comandos básicos y avanzados: SELECT, INSERT, UPDATE, DELETE, JOIN.

---
## 📢  Nota

Este proyecto es parte de mi proceso de aprendizaje para convertirme en Administrador de Bases de Datos Junior. Toda retroalimentación es bienvenida. 🚀





