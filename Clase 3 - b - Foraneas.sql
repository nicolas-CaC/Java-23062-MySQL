USE java23062;

DROP TABLE empleados;
DROP TABLE sectores;
DROP TABLE categorias;

SELECT * FROM empleados;
SELECT * FROM sectores;
SELECT * FROM categorias;

-- Tablas Padre/Primarias

CREATE TABLE empleados(
	id int AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	edad TINYINT UNSIGNED DEFAULT 18,
	PRIMARY KEY (id)
);

CREATE TABLE sectores(
	id int AUTO_INCREMENT,
	nombre varchar(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE categorias(
	id int AUTO_INCREMENT,
	nombre varchar(50) NOT NULL,
	clase enum('trainee','jr','ssr','sr'),
	PRIMARY KEY (id)
);

-- Inserts

INSERT INTO empleados (nombre, edad) VALUES ('Jose',25);
INSERT INTO empleados (nombre, edad) VALUES ('Pedro',30);
INSERT INTO empleados (nombre, edad) VALUES ('Ramon',35);
INSERT INTO empleados (nombre, edad) VALUES ('Susana',40);

INSERT INTO sectores (nombre) VALUES ('Publicidad');
INSERT INTO sectores (nombre) VALUES ('UXUI');
INSERT INTO sectores (nombre) VALUES ('Dev');
INSERT INTO sectores (nombre) VALUES ('PM');

INSERT  INTO sectores (nombre) VALUES ('QA');

INSERT INTO categorias(nombre, clase) VALUES ('Frontend', 1);
INSERT INTO categorias(nombre, clase) VALUES ('Frontend', 3);
INSERT INTO categorias(nombre, clase) VALUES ('Backend', 2);
INSERT INTO categorias(nombre, clase) VALUES ('Apps', 3);

-- Tablas Secundarias/Hijas

CREATE TABLE puestos (
	id int AUTO_INCREMENT PRIMARY KEY,
	horario enum('6 a 13hs','13 a 22hs','22 a 6hs'),
	empleadoid int NOT NULL,
	sectorid int NOT NULL,
	categoriaid int,
	FOREIGN KEY (empleadoid) REFERENCES empleados(id) ON UPDATE CASCADE,
	FOREIGN KEY (sectorid) REFERENCES sectores(id) ON UPDATE RESTRICT,
	FOREIGN KEY (categoriaid) REFERENCES categorias(id) ON UPDATE SET NULL
);

SELECT * FROM puestos;
DROP TABLE puestos;

INSERT INTO puestos(horario, empleadoid, sectorid, categoriaid) VALUES 
(1,1,1,1),
(1,1,1,2),
(1,1,4,3),
(1,2,1,4);

UPDATE empleados SET id = 5 WHERE id = 1;
UPDATE empleados SET id = 1 WHERE id = 5;

UPDATE sectores SET id = 8 WHERE id = 4;

UPDATE categorias SET id = 6 WHERE id = 3;


