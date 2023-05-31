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




CREATE TABLE numericos(
	tipotiny TINYINT NOT NULL,
	tiposmall SMALLINT,
	tipomedium MEDIUMINT NOT NULL,
	tipoint int,
	tipobig bigint,
	
);

INSERT INTO numericos VALUES (
	127,
	32767,
	8388607,
	2147483647,
	9223372036854775807
);