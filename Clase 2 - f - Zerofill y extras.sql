USE java23062;

CREATE TABLE zero_fill (
	id int(6) ZEROFILL,
	nro smallint(6) ZEROFILL
);

SELECT * FROM zero_fill;

INSERT INTO zero_fill VALUES (1,2);
INSERT INTO zero_fill VALUES (10,2);
INSERT INTO zero_fill VALUES (1000,2);

DROP TABLE zero_fill;

SELECT now() FROM zero_fill;
SELECT curdate() FROM zero_fill;
SELECT curtime() FROM zero_fill;
SELECT dayname(now()) FROM zero_fill;
SELECT datediff('20221018','20201018') FROM zero_fill;

SELECT format (id, 2, 'es_AR') FROM zero_fill;
