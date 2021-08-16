-- Cria Banco de Dados 'db_escola_noite'
CREATE DATABASE IF NOT EXISTS db_escola_noite;

USE db_escola_noite;

-- Cria tabela 'tb_area_curso'
CREATE TABLE IF NOT EXISTS tb_area_curso (
	cod_area INT(2) AUTO_INCREMENT,
    nome_area VARCHAR(40) NOT NULL UNIQUE,
    PRIMARY KEY (cod_area)
);

-- Cria tabela 'tb_curso'
CREATE TABLE IF NOT EXISTS tb_curso (
	id_curso INT(3) AUTO_INCREMENT,
    nome_curso VARCHAR(50) NOT NULL UNIQUE,
    duracao_curso INT(4) NOT NULL,
    cod_area INT(2) NOT NULL,
	PRIMARY KEY (id_curso),
    CONSTRAINT FK_tb_area_curso_tb_curso FOREIGN KEY (cod_area) REFERENCES tb_area_curso(cod_area)
);

-- Cria tabela 'tb_professor'
CREATE TABLE IF NOT EXISTS tb_professor (
	matricula_professor INT(3) AUTO_INCREMENT,
    nome_professor VARCHAR(40) NOT NULL,
    sobrenome_professor VARCHAR(100) NOT NULL,
    rg_professor VARCHAR(15) NOT NULL UNIQUE,
    cpf_professor VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (matricula_professor)
);

-- Cria tabela 'tb_turma'
CREATE TABLE IF NOT EXISTS tb_turma (
	cod_turma INT(6) AUTO_INCREMENT,
    periodo VARCHAR(10) NOT NULL,
    vagas INT(2) NOT NULL,
    id_curso INT(3) NOT NULL,
    matricula_professor INT(3) NOT NULL,
    PRIMARY KEY (cod_turma),
    CONSTRAINT FK_tb_curso_tb_turma FOREIGN KEY (id_curso) REFERENCES tb_curso(id_curso),
    CONSTRAINT FK_tb_professor_tb_turma FOREIGN KEY (matricula_professor) REFERENCES tb_professor(matricula_professor)
);

-- Cria tabea 'tb_aluno'
CREATE TABLE IF NOT EXISTS tb_aluno (
	ra_aluno INT(5) AUTO_INCREMENT,
    nome_aluno VARCHAR(40) NOT NULL,
    sobrenome_aluno VARCHAR(100) NOT NULL,
    rg_aluno VARCHAR(15) NOT NULL UNIQUE,
    cpf_aluno VARCHAR(14) NOT NULL UNIQUE,
    email_aluno VARCHAR(50) NOT NULL UNIQUE,
    responsavel_aluno VARCHAR(140),
    cod_turma INT(6) NOT NULL,
    PRIMARY KEY (ra_aluno),
    CONSTRAINT FK_tb_turma_tb_aluno FOREIGN KEY (cod_turma) REFERENCES tb_turma(cod_turma)
);