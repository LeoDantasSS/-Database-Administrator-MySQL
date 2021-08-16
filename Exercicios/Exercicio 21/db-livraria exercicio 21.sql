CREATE DATABASE db_livraria;

USE db_livraria;

CREATE TABLE tb_editora (
	id_editora INT(4) AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_editora)
);

CREATE TABLE tb_cliente (
	id_cliente INT(7) AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    cpf_cnpj VARCHAR(25) NOT NULL UNIQUE,
    PRIMARY KEY (id_cliente)
);

DROP TABLE tb_editora;

DROP TABLE tb_cliente;

DROP DATABASE db_livraria;