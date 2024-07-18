/*Ejercicio 5
1.Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre (cadena de texto).*/
CREATE TABLE IF NOT EXISTS Clientes(
	id SERIAL PRIMARY KEY,
	Nombre VARCHAR (255)
)
/*2.Inserta un cliente con id=1 y nombre='John' en la tabla "Clientes".*/
INSERT INTO Clientes (nombre)
VALUES ('John')
/*3.Actualiza el nombre del cliente con id=1 a 'John Doe' en la tabla "Clientes".*/
UPDATE clientes
SET Nombre = 'John Doe'
WHERE ID = 1
/*4.Elimina el cliente con id=1 de la tabla "Clientes".*/
DELETE FROM clientes
WHERE id = 1
/*5.Lee todos los clientes de la tabla "Clientes".*/
SELECT * FROM Clientes
/*6. Crea una tabla llamada "Pedidos" con las columnas id (entero) y cliente_id (entero).*/
CREATE TABLE IF NOT EXISTS Pedidos (
	id SERIAL PRIMARY KEY,
	Cliente_id INT
)
/*7. Inserta un pedido con id=1 y cliente_id=1 en la tabla "Pedidos".*/
INSERT INTO Pedidos (cliente_id)
VALUES (1)
/*8. Actualiza el cliente_id del pedido con id=1 a 2 en la tabla "Pedidos".*/
UPDATE Pedidos
SET cliente_id = 2
WHERE ID = 1
/*9.Elimina el pedido con id=1 de la tabla "Pedidos".*/
DELETE FROM Pedidos
WHERE id = 1
/*10. Lee todos los pedidos de la tabla "Pedidos".*/
SELECT * FROM pedidos
/*11.Crea una tabla llamada "Productos" con las columnas id (entero) y nombre (cadena de texto).*/
CREATE TABLE IF NOT EXISTS Productos (
	id SERIAL PRIMARY KEY,
	Nombre VARCHAR (255)
)
/*12.Inserta un producto con id=1 y nombre='Camisa' en la tabla "Productos".*/
INSERT INTO Productos (nombre)
VALUES ('Camisa')
/*13.Actualiza el nombre del producto con id=1 a 'Pantalón' en la tabla "Productos".*/
UPDATE Productos
SET nombre = 'Pantalon'
WHERE ID = 1
/*14.Elimina el producto con id=1 de la tabla "Productos".*/
DELETE FROM Productos
WHERE id = 1
/*15.Lee todos los productos de la tabla "Productos".*/
SELECT * FROM Productos
/*16. Crea una tabla llamada "DetallesPedido" con las columnas pedido_id (entero) producto_id (entero).*/
CREATE TABLE IF NOT EXISTS DetallesPedido (
	id SERIAL PRIMARY KEY,
	Pedido_id INT,
	producto_id INT
)
/*17. Inserta un detalle de pedido con pedido_id=1 y producto_id=1 en la tabla
"DetallesPedido"*/
INSERT INTO DetallesPedido (pedido_id,producto_id)
VALUES (1,1)
/*18. Actualiza el producto_id del detalle de pedido con pedido_id=1 a 2 en la tabla
"DetallesPedido".*/
UPDATE DetallesPedido
SET producto_id = 2
WHERE Pedido_id = 1
/*19.Elimina el detalle de pedido con pedido_id=1 de la tabla "DetallesPedido".*/
DELETE FROM Detallespedido
WHERE pedido_id = 1
/*20.Lee todos los detalles de pedido de la tabla "DetallesPedido".*/
SELECT * FROM Detallespedido
/*21.Realiza una consulta para obtener todos los clientes y sus pedidos correspondientes utilizando un inner join.*/
SELECT*FROM Clientes s
INNER JOIN pedidos e
ON s.id = e.cliente_id
/*22. Realiza una consulta para obtener todos los clientes y sus pedidos correspondientes utilizando un left join.*/
SELECT*FROM Clientes s
LEFT JOIN pedidos e
ON s.id = e.cliente_id
/*23. Realiza una consulta para obtener todos los productos y los detalles de pedido correspondientes utilizando un inner join.*/
SELECT*FROM productos s
INNER JOIN Detallespedido e
ON s.id = e.producto_id
/*24. Realiza una consulta para obtener todos los productos y los detalles de pedido
correspondientes utilizando un left join.*/
SELECT*FROM productos s
LEFT JOIN Detallespedido e
ON s.id = e.producto_id
/*25. Crea una nueva columna llamada "telefono" de tipo cadena de texto en la tabla "Clientes".*/
ALTER TABLE CLIENTES
ADD COLUMN Telefono VARCHAR (255)
/*26.Modifica la columna "telefono" en la tabla "Clientes" para cambiar su tipo de datos a entero.*/
ALTER TABLE CLIENTES
ALTER COLUMN Telefono TYPE INT
/*27.Elimina la columna "telefono" de la tabla "Clientes".*/
ALTER TABLE CLIENTES
DROP COLUMN telefono
/*28.Cambia el nombre de la tabla "Clientes" a "Usuarios".*/
ALTER TABLE CLIENTES
RENAME TO Usuarios
/*29. Cambia el nombre de la columna "nombre" en la tabla "Usuarios" a "nombre_completo".*/
ALTER TABLE Usuarios
RENAME COLUMN Nombre to nombre_completo
/*30. Agrega una restricción de clave primaria a la columna "id" en la tabla "Usuarios".*/
ALTER TABLE Usuarios
ADD CONSTRAINT id_usuarios
PRIMARY KEY (id)