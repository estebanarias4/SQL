/*Nivel de dificultad: Difícil 
1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).*/
CREATE TABLE IF NOT EXISTS Productos (
	id SERIAL PRIMARY KEY,
	Nombre VARCHAR (255),
	Precio DECIMAL
)
/*2. Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO productos (nombre,precio)
VALUES ('Zapatos',25.40);
INSERT INTO productos (nombre,precio)
VALUES ('Camiseta',5.30);
INSERT INTO productos (nombre,precio)
VALUES ('Movil',335.40);
INSERT INTO productos (nombre,precio)
VALUES ('Gorra',17.80);
INSERT INTO productos (nombre,precio)
VALUES ('Calcetines',2.50)
/*3. Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE productos
SET precio = 5
WHERE  id = 5
/*4.Elimina un producto de la tabla "Productos".*/
DELETE FROM productos
WHERE id = 5
/*5.Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").*/
SELECT
s.nombre as nombre,
e.nombre as nombre
FROM public.usuarios s
INNER JOIN public.productos e
on e.id_usuario = s.id