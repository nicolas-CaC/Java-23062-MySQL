-- BASES DE DATOS

CREATE DATABASE soyunabasededatos;
SHOW DATABASES;
DROP DATABASE soyunabasededatos;
USE java23062;

-- TABLAS

CREATE TABLE productos (
	id int AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(50) NOT NULL,
	precio float NOT NULL,
	descripcion text
);

SHOW tables;
DESCRIBE productos;
SHOW fields FROM productos;
DROP TABLE productos;

-- INSERTAR

INSERT INTO productos (nombre, precio, descripcion) VALUES ('Pan',10.99, 'Este es un rico pan');
INSERT INTO productos (nombre, precio) VALUES ('Jugo',2.99);
INSERT INTO productos (nombre, precio) VALUES ('Foca',0.50);
INSERT INTO productos(nombre, precio) VALUES 
	('churros', 5.99),
	('alfajores',6.70),
	('figuritas',10),
	('cuadro',200.50);

INSERT INTO productos values(10,'juguete',1.59,'X-Men');

SELECT * FROM productos;
SELECT * FROM productos WHERE precio > 5;
SELECT * FROM productos WHERE precio > 5 AND id > 1;
SELECT * FROM productos WHERE precio > 5 OR id > 6;
SELECT * FROM productos WHERE id IN (2,4);
SELECT * FROM productos WHERE id LIKE 3;
SELECT * FROM productos WHERE id <> 3;

SELECT nombre FROM productos;
SELECT nombre FROM productos WHERE precio > 5;
SELECT nombre, precio FROM productos WHERE precio > 5;

-- MODIFICAR TABLAS

ALTER TABLE productos CHANGE nombre titulo varchar(150);
ALTER TABLE productos CHANGE titulo nombre varchar(200);

ALTER TABLE productos ADD CONSTRAINT rating CHECK (precio > 1);
ALTER TABLE productos DROP CONSTRAINT rating;

ALTER TABLE productos MODIFY COLUMN nombre varchar(250);

-- MODIFICAR VALORES

UPDATE productos SET precio=5.59 WHERE id=1;
UPDATE productos SET precio=9.99, nombre='Papita' WHERE id=1;
UPDATE productos SET precio=3.45 WHERE id < 5 AND nombre='Papita';

-- BORRAR ELEMENTOS

DELETE FROM productos WHERE id < 2; 
DELETE FROM productos WHERE id = 2; 

DELETE FROM productos;
truncate TABLE productos;

