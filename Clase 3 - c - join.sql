USE java23062;

SELECT * FROM autos;
DROP TABLE autos;

CREATE table autos (
	id int AUTO_INCREMENT PRIMARY KEY,
	name TINYTEXT NOT NULL,
	model YEAR NOT NULL
);

INSERT INTO autos (name, model) VALUES 
	('BMW', 2002),
	('Alfa Romeo',1990),
	('Renault', 1987),
	('Lamborghini', 2005),
	('Ferrari',1995);

-- --------------------------------------

SELECT * FROM conductores;
DROP TABLE conductores;

CREATE TABLE conductores (
	id int AUTO_INCREMENT PRIMARY KEY,
	name TINYTEXT NOT NULL,
	autoid int,
	FOREIGN KEY (autoid) REFERENCES autos(id) ON UPDATE CASCADE
);

INSERT INTO conductores (name, autoid) VALUES 
('Jose', 1),
('Pedro', 2),
('Jorge', 3),
('Susana', 2),
('Romina', 4),
('Alejandra', 3),
('Sandra', NULL);

SELECT 
	conductores.name AS conductor, 
	autoid, 
	autos.name AS auto 
		FROM conductores
			LEFT JOIN autos 
				ON autos.id = autoid;

			
SELECT 
	conductores.name AS conductor, 
	autoid, 
	autos.name AS auto 
		FROM conductores
			RIGHT JOIN autos 
				ON autos.id = autoid;
			

SELECT 
	conductores.name AS conductor, 
	autoid, 
	autos.name AS auto 
		FROM conductores
			INNER JOIN autos 
				ON autos.id = autoid;
			

SELECT * FROM conductores 
	FULL JOIN autos ON autos.id = autoid;
		

SELECT 
	conductores.name AS conductor
		FROM conductores 
			LEFT JOIN autos
				ON autoid IS NULL;

SELECT 
	conductores.name AS conductor
		FROM conductores 
			RIGHT JOIN autos
				ON autoid IS NULL;
		