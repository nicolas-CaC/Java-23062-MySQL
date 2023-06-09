use java23062;
DESCRIBE datos;

DROP TABLE datos;
SELECT * FROM datos;
show fields FROM datos;

CREATE TABLE datos(tipovar char);
INSERT INTO datos VALUES ('a');
CREATE TABLE datos(tipovar char(3));
INSERT INTO datos VALUES ('abc');

CREATE TABLE datos (tipovarchar varchar(3));
INSERT INTO datos VALUES ('abcd');

CREATE TABLE datos(tipobin binary);
INSERT INTO datos values('a');

CREATE TABLE datos (tipovarbin VARBINARY(65532));
INSERT INTO datos VALUES(X'0123456789');
INSERT INTO datos VALUES (X'00FF00');
INSERT INTO datos VALUES (LOAD_FILE('c:/1.jpg'));

CREATE TABLE datos (tiny TINYBLOB);
INSERT INTO datos VALUES (LOAD_FILE('c:/1.txt'));

CREATE TABLE datos (tipoblob blob);
INSERT INTO datos VALUES (LOAD_FILE('c:\\1.png'));

CREATE TABLE datos (tipoenum enum('a','b','c'));
INSERT INTO datos VALUES (2);
INSERT INTO datos VALUES (1);

CREATE TABLE datos (tiposet SET('a','b','c'));
INSERT INTO datos VALUES ('a,b');
INSERT INTO datos values('b,c');
INSERT INTO datos values('a,b,c');

CREATE TABLE datos(
	tipochar char,
	tipovarchar varchar(100),
	tipobinary BINARY,
	tipovarbinary VARBINARY(65000),
	tipotinyblob TINYBLOB,
	tipotinytext TINYTEXT,
	tipoblob blob,
	tipotext text,
	tipomediumblob MEDIUMBLOB,
	tipomediumtext MEDIUMTEXT,
	tipolongblob LONGBLOB,
	tipolongtext LONGTEXT,
	tipoenum enum('a','b','c'),
	tiposet SET('a','b','c','x','y','z')
);


INSERT INTO datos values(
	'a',
	'Abcdef',
	'0',
	X'ff0000',
	LOAD_FILE('c:/1.txt'),
	'Hola',
	LOAD_FILE('c:/1.jpg'),
	'Hola como estan',
	LOAD_FILE('c:/1.jpg'),
	'Hola como estan? Y mas',
	LOAD_FILE('c:/1.jpg'),
	'Superlargo',
	1,
	'a,b,x'
);
