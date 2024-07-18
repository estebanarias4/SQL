/*Nivel de dificultad: Experto 
1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").*/
CREATE TABLE IF NOT EXISTS Pedidos(
	id SERIAL PRIMARY KEY,
	id_usuario INT NOT NULL,
	CONSTRAINT FK_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios (id),
	id_producto INT NOT NULL,
	CONSTRAINT FK_id_producto FOREIGN KEY (id_producto) REFERENCES productos (id)
)
/*2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos.*/
INSERT INTO pedidos (id_usuarios,id_producto)
VALUES (1,1);
INSERT INTO pedidos (id_usuario,id_producto)
VALUES (3,2);
INSERT INTO pedidos (id_usuario,id_producto)
VALUES (4,3)
/*3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE).*/
SELECT
s.nombre as nombre,
e.nombre as nombre
FROM public.usuarios s
LEFT JOIN public.productos e
on e.id_usuario = s.id
/*4.Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN).*/
SELECT
s.nombre as nombre
FROM public.usuarios s
LEFT JOIN public.pedidos e
on e.id_usuario = s.id
/*5.Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)*/
ALTER TABLE pedidos
ADD COLUMN Cantidad INT;
UPDATE pedidos
SET cantidad = 5
WHERE id = 1;
UPDATE pedidos
SET cantidad = 2
WHERE id = 2;
UPDATE pedidos
SET cantidad = 10
WHERE id = 3