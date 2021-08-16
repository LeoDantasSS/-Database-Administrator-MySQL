CREATE DATABASE db_escola_noite;

USE db_escola_noite;

CREATE TABLE tb_curso (
	id_curso INT(3) AUTO_INCREMENT,
    nome_curso VARCHAR(50) NOT NULL UNIQUE,
    duracao INT(4) NOT NULL,
    area_curso 	VARCHAR(40),
	PRIMARY KEY (id_curso)
);

CREATE TABLE tb_professor (
	matricula_professor INT(3) AUTO_INCREMENT,
    nome_professor VARCHAR(40) NOT NULL,
    sobrenome_professor VARCHAR(100) NOT NULL,
    rg_professor VARCHAR(15) NOT NULL UNIQUE,
    cpf_professor VARCHAR(14) NOT NULL UNIQUE,
    area_atuacao VARCHAR(50) NOT NULL,
    telefone_professor VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (matricula_professor)
);

CREATE TABLE tb_turma (
	cod_turma INT(6) AUTO_INCREMENT,
    periodo VARCHAR(10) NOT NULL,
    vagas INT(2) NOT NULL,
    id_curso INT(3) NOT NULL,
    matricula_professor INT(3) NOT NULL,
    PRIMARY KEY (cod_turma),
    FOREIGN KEY (id_curso) REFERENCES tb_curso(id_curso),
    FOREIGN KEY (matricula_professor) REFERENCES tb_professor(matricula_professor)
);

CREATE TABLE tb_aluno (
	ra_aluno INT(5) AUTO_INCREMENT,
    nome_aluno VARCHAR(40) NOT NULL,
    sobrenome_aluno VARCHAR(100) NOT NULL,
    rg_aluno VARCHAR(15) NOT NULL UNIQUE,
    cpf_aluno VARCHAR(14) NOT NULL UNIQUE,
    email_aluno VARCHAR(50) NOT NULL UNIQUE,
    responsavel_aluno VARCHAR(140),
    cod_turma INT(6) NOT NULL,
    PRIMARY KEY (ra_aluno),
    FOREIGN KEY (cod_turma) REFERENCES tb_turma(cod_turma)
);

INSERT INTO tb_curso (nome_curso, duracao, area_curso) VALUES ('Administrador de banco de dados', '200', 'TI');
INSERT INTO tb_curso (nome_curso, duracao, area_curso) VALUES ('Desenvolvedor Front-End', '200', 'TI');
INSERT INTO tb_curso (nome_curso, duracao, area_curso) VALUES ('Desenvolvedor Back-End', '200', 'TI');
INSERT INTO tb_curso (nome_curso, duracao, area_curso) VALUES ('Padeiro', '160', 'Alimentacao');
INSERT INTO tb_curso (nome_curso, duracao, area_curso) VALUES ('Assistente Administrativo', '100', 'Administracao');

INSERT INTO tb_professor (nome_professor, sobrenome_professor, rg_professor, cpf_professor, email) VALUES ('Alex', 'Machado', '1.111.111', '111.111.111-11', 'alex@gmail.com');	
INSERT INTO tb_professor (nome_professor, sobrenome_professor, rg_professor, cpf_professor, email) VALUES ('Alvo', 'Dumbledore', '2.222.222', '222.222.222-22', 'alvo@gmail.com');
INSERT INTO tb_professor (nome_professor, sobrenome_professor, rg_professor, cpf_professor, email) VALUES ('Severo', 'Snape', '3.333.333', '333.333.333-33', 'severo@gmail.com');
INSERT INTO tb_professor (nome_professor, sobrenome_professor, rg_professor, cpf_professor, email) VALUES ('Joao', 'da Silva', '4.444.444', '444.444.444-44', 'joao@gmail.com');		

INSERT INTO tb_turma (periodo, vagas, id_curso, matricula_professor) VALUES ('Matricula', '30', '1', '1');
INSERT INTO tb_turma (periodo, vagas, id_curso, matricula_professor) VALUES ('Vespertino', '30', '3', '3');
INSERT INTO tb_turma (periodo, vagas, id_curso, matricula_professor) VALUES ('Noturno', '30', '1', '3');

SELECT * FROM tb_curso;

SELECT * FROM tb_professor;

SELECT * FROM tb_turma;