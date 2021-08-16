CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_curso (
	cod_curso INT(4) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL UNIQUE,
    duracao INT(4) NOT NULL,
	PRIMARY KEY (cod_curso)
);

CREATE TABLE tb_professor (
	mat_professor INT(3) AUTO_INCREMENT,
    nome_professor VARCHAR(40) NOT NULL,
    sobrenome_professor VARCHAR(100) NOT NULL,
    rg_professor VARCHAR(15) NOT NULL UNIQUE,
    cpf_professor VARCHAR(15) NOT NULL UNIQUE,
    area_atuacao VARCHAR(50) NOT NULL,
    telefone_professor VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (mat_professor)
);