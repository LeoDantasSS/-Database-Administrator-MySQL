-- Cria o Banco "meu_primeiro_banco"
CREATE DATABASE meu_primeiro_db;

-- Seleciona o banco "meu_primeiro_banco"
USE meu_primeiro_db;

-- Cria tabela "tb_usuario"
CREATE TABLE tb_usuario (
	id_usuario INT(3) AUTO_INCREMENT,
    nome_usuario VARCHAR(40) NOT NULL,
    sobrenome_usuario VARCHAR(100) NOT NULL,
    email_usuario VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id_usuario)
);

-- Exclui a tabela "tb_usuario"
DROP TABLE tb_usuario;

-- Exclui banco de dados
DROP DATABASE meu_primeiro_db;