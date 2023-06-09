USE java23062;

SELECT * FROM usuarios;
DROP TABLE usuarios;
DESCRIBE usuarios;

-- Clave primaria simple

CREATE TABLE usuarios(
	id int AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(100) NOT  NULL,
	edad TINYINT UNSIGNED DEFAULT 18
);

-- Clave primaria compuesta

CREATE TABLE usuarios(
	id int AUTO_INCREMENT NOT NULL,
	nombre varchar(100) NOT  NULL,
	edad TINYINT UNSIGNED DEFAULT 18,
	PRIMARY KEY (id, nombre)
);

-- INDEX con alias

CREATE TABLE usuarios(
	id int AUTO_INCREMENT NOT NULL,
	nombre varchar(100),
	edad TINYINT UNSIGNED DEFAULT 18,
	INDEX clave_compuesta (id, nombre)
);
SHOW INDEX FROM usuarios;

-- Indices Unicos

CREATE TABLE usuarios(
	id int AUTO_INCREMENT,
	nombre varchar(100),
	edad TINYINT UNSIGNED DEFAULT 18,
	UNIQUE clave_unica (id, nombre)
);

-- Inserts

INSERT INTO usuarios (nombre) VALUES ('Jose');
INSERT INTO usuarios (nombre, edad) VALUES ('Pedro', 25);
INSERT usuarios VALUES (100, 'Ramon', 30);
INSERT usuarios VALUES (100, 'Gaston', 35);
INSERT usuarios VALUES (100, 'Gaston', 45);
INSERT usuarios VALUES (null, null, 45);
INSERT usuarios VALUES (102, 'Roberto', 45);


