-- Exclui banco de dados que tenha o nome "db_curso_noite"
DROP DATABASE IF EXISTS db_curso_noite;

-- Cria banco de dados "db_curso_noite"
CREATE DATABASE IF NOT EXISTS db_curso_noite;

-- Seleciona banco de dados "db_curso_noite"
USE db_curso_noite;

-- Cria tabela "tb_departamento"
CREATE TABLE IF NOT EXISTS tb_departamento (
  id_departamento INT(2) NOT NULL AUTO_INCREMENT,
  nome_departamento VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_departamento)
  );
   
-- Cria tabela "tb_curso"
CREATE TABLE IF NOT EXISTS tb_curso (
  cod_curso INT(3) NOT NULL AUTO_INCREMENT,
  nome_curso VARCHAR(45) NOT NULL,
  PRIMARY KEY (cod_curso)
  );
  
-- Cria tabela "tb_disciplina"
CREATE TABLE IF NOT EXISTS tb_disciplina (
  cod_disciplina INT(2) NOT NULL AUTO_INCREMENT,
  nome_disciplina VARCHAR(30) NOT NULL,
  PRIMARY KEY (cod_disciplina)
  );
  
-- Cria tabela "tb_aluno"
CREATE TABLE IF NOT EXISTS tb_aluno (
  ra_aluno INT(10) NOT NULL AUTO_INCREMENT,
  nome_aluno VARCHAR(40) NOT NULL,
  sobrenome_aluno VARCHAR(100) NOT NULL,
  id_departamento INT(2) NOT NULL,
  PRIMARY KEY (ra_aluno),
  CONSTRAINT FK_tb_aluno_tb_departamento FOREIGN KEY (id_departamento) REFERENCES tb_departamento (id_departamento)
  );
  
-- Cria tabela "tb_aluno_has_disciplina"
CREATE TABLE IF NOT EXISTS tb_aluno_has_disciplina (
  ra_aluno INT(10) NOT NULL,
  id_departamento INT(2) NOT NULL,
  cod_disciplina INT(2) NOT NULL,
  CONSTRAINT FK_tb_aluno_has_disciplina_tb_aluno FOREIGN KEY (ra_aluno) REFERENCES tb_aluno (ra_aluno),
  CONSTRAINT FK_tb_aluno_has_disciplina_tb_departamento FOREIGN KEY (id_departamento) REFERENCES tb_departamento (id_departamento),
  CONSTRAINT FK_tb_aluno_has_disciplina_tb_disciplina FOREIGN KEY (cod_disciplina) REFERENCES tb_disciplina (cod_disciplina)
  );
  
-- Cria tabela "tb_disciplina_has_aluno"  
CREATE TABLE IF NOT EXISTS tb_curso_has_aluno (
  cod_curso INT(3) NOT NULL,
  cod_disciplina INT(2) NOT NULL,
  CONSTRAINT FK_tb_curso_has_aluno_tb_curso FOREIGN KEY (cod_curso) REFERENCES tb_curso (cod_curso),
  CONSTRAINT FK_tb_curso_has_aluno_tb_disciplina FOREIGN KEY (cod_disciplina) REFERENCES tb_disciplina (cod_disciplina)
  );
  
  SELECT * FROM tb_departamento;
  
  SELECT * FROM tb_curso;
  
  SELECT * FROM tb_disciplina;
  
  SELECT * FROM tb_aluno;
  
  SELECT * FROM tb_aluno_has_disciplina;
  
  SELECT * FROM tb_curso_has_aluno;
  