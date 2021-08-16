-- Deletar banco casso ele exista
DROP DATABASE IF EXISTS db_normalizacao_noite;

-- Cria banco de dados
CREATE DATABASE IF NOT EXISTS db_normalizacao_noite;

-- Selecionar o banco
USE db_normailizacao_noite;

-- Cria tabela 'tb_usuario'
CREATE TABLE IF NOT EXISTS tb_usuario (
	codigo INT(4) AUTO_INCREMENT,
    nome_usuario VARCHAR(100) NOT NULL,
    sobrenome_usuario VARCHAR(100) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    logradouro VARCHAR(20) NOT NULL,
    complemento VARCHAR(100),
    numero VARCHAR(5),
    PRIMARY KEY (codigo)
);

-- Cria tabela 'tb_telefone'
CREATE TABLE IF NOT EXISTS tb_telefone (
	cod_telefone INT(4) AUTO_INCREMENT,
    telefone VARCHAR(20) NOT NULL,
    codigo_usuario INT(4),
    PRIMARY KEY (cod_telefone),
    CONSTRAINT FK_tb_usuario_tb_telefone FOREIGN KEY (codigo_usuario) REFERENCES tb_usuario(codigo_usuario)
);