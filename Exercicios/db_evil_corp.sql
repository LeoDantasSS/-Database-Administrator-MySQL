DROP DATABASE IF EXISTS db_evil_corp;

CREATE DATABASE IF NOT EXISTS db_evil_corp;

USE db_evil_corp;

CREATE TABLE IF NOT EXISTS tb_usuario (
	id_usuario INT(6) AUTO_INCREMENT,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id_usuario)
);