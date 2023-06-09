USE java23062;
DESCRIBE numericos;

DROP TABLE numericos;
SELECT * FROM numericos;
SHOW fields FROM numericos;


CREATE TABLE numericos(tinysigned TINYINT);
CREATE TABLE numericos(
	tinyunsigned TINYINT UNSIGNED,
	tinysigned TINYINT
);
INSERT INTO numericos VALUES (255, 127);



CREATE TABLE numericos(tipodecimal decimal);
INSERT INTO numericos values(10);

CREATE TABLE numericos(tipodecimal decimal(3,2));
INSERT INTO numericos values(9.25);

CREATE TABLE numericos (tipofloat float (3,2));
INSERT INTO numericos values(0.25);

CREATE TABLE numericos(tipofloat float);


CREATE TABLE numericos(
	tipotiny TINYINT NOT NULL,
	tiposmall SMALLINT,
	tipomedium MEDIUMINT NOT NULL,
	tipoint int,
	tipobig bigint,
	tipodecimal decimal(3,2),
	tipofloat float,
	tipodouble double DEFAULT 3,
	tiporeal REAL
);

INSERT INTO numericos VALUES (
	127,
	32767,
	8388607,
	2147483647,
	9223372036854775807,
	1.23,
	0.123456789,
	0.12345678901234567,
	0.12345678901234567
);