DROP DATABASE IF EXISTS db_conjuntos_numericos;

CREATE DATABASE IF NOT EXISTS db_conjuntos_numericos;

USE db_conjuntos_numericos;

CREATE TABLE IF NOT EXISTS tb_fibonacci (
	id_fibonacci INT(2) AUTO_INCREMENT,
    numero_fibonacci INT(3) NOT NULL,
    PRIMARY KEY (id_fibonacci)
);

CREATE TABLE IF NOT EXISTS tb_primos (
	id_primos INT(2) AUTO_INCREMENT,
    numero_primos INT(3) NOT NULL,
    PRIMARY KEY (id_primos)
);

INSERT INTO tb_fibonacci (numero_fibonacci) VALUES
(1),
(2),
(3),
(5),
(8),
(13),
(21),
(34),
(55);

SELECT * FROM tb_fibonacci;

INSERT INTO tb_primos (numero_primos) VALUES
(2),
(3),
(5),
(7),
(11),
(13),
(17),
(19),
(23);

SELECT * FROM tb_primos;

-- Usado para fazer intersecção entre tabela A e B
SELECT * FROM tb_fibonacci AS a INNER JOIN tb_primos AS b ON a.numero_fibonacci = b.numero_primos;