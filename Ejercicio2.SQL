/*Ejercicio 2
Nivel de dificultad: Fácil
1. Crea una base de datos llamada "MiBaseDeDatos"*/
CREATE DATABASE MiBaseDeDatos
/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero)*/
CREATE TABLE IF NOT EXISTS Usuarios(
	ID SERIAL PRIMARY KEY,
	Nombre VARCHAR (255),
	Edad INT
)
/*3.Inserta dos registros en la tabla "Usuarios".*/
INSERT INTO public.usuarios (nombre,edad)
VALUES ('Juan',20);
INSERT INTO public.usuarios (nombre,edad)
VALUES ('Pedro',30)
/*4.Actualiza la edad de un usuario en la tabla "Usuarios".*/
UPDATE usuarios
SET edad = 25
WHERE ID=1
/*5.Elimina un usuario de la tabla "Usuarios".*/
DELETE FROM usuarios
WHERE id=2
/*Nivel de dificultad: Moderado
1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, claveprimaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE IF NOT EXISTS Ciudades(
	ID SERIAL PRIMARY KEY,
	Nombre VARCHAR (255),
	Pais VARCHAR (255)
)
/*2.Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO public.ciudades (nombre,pais)
VALUES ('Roma','Italia');
INSERT INTO public.ciudades (nombre,pais)
VALUES ('Madrid','España');
INSERT INTO public.ciudades (nombre,pais)
VALUES ('Paris','Francia')
/*3.Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".*/
ALTER TABLE usuarios
add constraint fk_ciudades_id foreign key (ciudades_id) references ciudades (id)
/*4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT 
usuarios.nombre as nombre,
ciudades.nombre as nombre,
ciudades.pais as pais
FROM usuarios
LEFT JOIN ciudades
on usuarios.ciudades_id = ciudades.id
/*5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN)..*/
SELECT 
usuarios.nombre as nombre,
ciudades.nombre as nombre,
ciudades.pais as pais
FROM usuarios
INNER JOIN ciudades
on usuarios.ciudades_id = ciudades.id