CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_cliente (
	cod_pedido INT(3) AUTO_INCREMENT,
    nome_cliente VARCHAR(40) NOT NULL,
    sobrenome_cliente VARCHAR(50) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    PRIMARY KEY (cod_pedido)
);

CREATE TABLE tb_pizza (
	cod_pizza INT(3) AUTO_INCREMENT,
    sabor_pizza VARCHAR(30) NOT NULL UNIQUE,
    preco_pizza FLOAT(3) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    PRIMARY KEY (cod_pizza)
);