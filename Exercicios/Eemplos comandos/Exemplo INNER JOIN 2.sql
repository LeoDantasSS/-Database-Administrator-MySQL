DROP DATABASE IF EXISTS db_conssesionaria;

CREATE DATABASE IF NOT EXISTS db_conssesionaria;

USE db_conssesionaria;

CREATE TABLE IF NOT EXISTS tb_chevrolet (
	codigo_chevrolet INT(2) AUTO_INCREMENT,
    modelo VARCHAR(30) NOT NULL,
    ano VARCHAR(4) NOT NULL,
    cor VARCHAR(25) NOT NULL,
    numero_portas INT(1),
    valor FLOAT(9,2),
    tipo_motor VARCHAR(3),
    categoria VARCHAR(15),
    PRIMARY KEY (codigo_chevrolet)
);

CREATE TABLE IF NOT EXISTS tb_volksvagen (
	codigo_volksvagen INT(2) AUTO_INCREMENT,
    modelo VARCHAR(30) NOT NULL,
    ano VARCHAR(4) NOT NULL,
    cor VARCHAR(25) NOT NULL,
    numero_portas INT(1),
    valor FLOAT(9,2),
    tipo_motor VARCHAR(3),
    categoria VARCHAR(15),
    PRIMARY KEY (codigo_volksvagen)
);

INSERT INTO tb_chevrolet (modelo, ano, cor, numero_portas, valor, tipo_motor, categoria) 
VALUES ('Camaro', '2020', 'Amarelo', 2, 406240.00, '6.2', 'Esportivo');

INSERT INTO tb_volksvagen (modelo, ano, cor, numero_portas, valor, tipo_motor, categoria) 
VALUES ('Jetta', '2020', 'Preto', 4, 109000.00, '2.0', 'Esportivo'),
 ('Jetta', '2019', 'Amarelo', 2, 109000.00, '2.0', 'Esportivo'),
 ('Jetta', '2017', 'Azul', 2, 109000.00, '2.0', 'Esportivo'),
 ('Gol', '2019', 'Branco', 2, 109000.00, '1.0', 'Passeio'),
 ('Gol', '2020', 'Prata', 4, 109000.00, '1.0', 'Passeio'),
 ('Gol', '2015', 'Preto', 2, 109000.00, '1.6', 'Passeio'),
 ('Gol', '2018', 'Vermelho', 4, 406240.00, '1.6', 'Esportivo');
 
 SELECT * FROM tb_volksvagen;
 
 -- Filtragem mais seletiva do comando SELECT
 SELECT modelo, ano, cor FROM tb_chevrolet WHERE cor = 'Preto';
 
 -- Compara coluna de cada tabela retornando todos os campos com caracteristicas em comum
 SELECT * FROM tb_chevrolet AS a INNER JOIN tb_volksvagen AS b ON a.ano = b.ano;
 
 -- Compara com filtragem as duas tabelas limitando informações selecionadas pelo comando SELECT
 SELECT a.modelo, a.ano, a.cor, b.modelo, b.ano, b.cor FROM tb_chevrolet AS a INNER JOIN tb_volksvagen AS b ON a.cor = b.cor;
 
 --  Compara com filtragem as duas tabelas limitando informações selecionadas pelo comando WHERE
 SELECT a.modelo, a.ano, a.cor, b.modelo, b.ano, b.cor FROM tb_chevrolet AS a INNER JOIN tb_volksvagen AS b ON a.cor = b.cor WHERE a.cor = 'Preto';
 
 -- Retorna tabela A + intercequição da tabela B sem todo o resultado da tabela B
 SELECT a.modelo, a.ano, a.cor, b.modelo, b.ano, b.cor FROM tb_chevrolet AS a LEFT JOIN tb_volksvagen AS b ON a.cor = b.cor;
 
 -- Retorna so tabela A/B sem a intercequicao da tabela A/ com os comando LEFT ou RIGHT
 SELECT * FROM tb_chevrolet AS a LEFT JOIN tb_volksvagen AS b ON a.tipo_motor = b.tipo_motor WHERE b.tipo_motor IS NULL;