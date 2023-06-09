USE java23062;
DESCRIBE booleanos;

DROP TABLE booleanos;
SELECT * FROM booleanos;
SHOW fields FROM booleanos;

CREATE TABLE booleanos (
	tipobit bit(3),
	tipoboolean boolean
);

INSERT INTO booleanos VALUES (0, 0);
INSERT INTO booleanos VALUES (b'010', 1);