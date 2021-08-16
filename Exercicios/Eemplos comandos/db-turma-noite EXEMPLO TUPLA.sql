-- cria banco de dados
CREATE DATABASE db_turma_noite;

-- seleciona banco
USE db_turma_noite;

-- criação de tabela
CREATE TABLE tb_pessoa (
	id_pessoa INT(4) AUTO_INCREMENT,
    nome VARCHAR(32) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (id_pessoa)
);

-- novo conteudo da aula 09/06/2021 TUPLA

-- inserir pessoas na tabela
INSERT INTO tb_pessoa (nome, sobrenome, cpf, email) VALUES ('Fulano', 'de Tal', '111.111.111-11', 'fulano@gmail.com');
INSERT INTO tb_pessoa (nome, sobrenome, cpf, email) VALUES ('Cicrano', 'da Silva', '123.456.789-10', 'cicrano@gmail.com');
INSERT INTO tb_pessoa (nome, sobrenome, cpf, email) VALUES ('Beltrano', 'da Sousa', '987.654.321-01', 'beltrano@gmail.com'),
	('Joao', 'Maria', '222.222.222-22', 'joao@gmail.com'),
	('Maria', 'Joao', '333.333.333-33', 'maria@gmail.com');
    
-- comando que atualiza dados de cadastro
UPDATE tb_pessoa SET sobrenome = 'Messias' WHERE id_pessoa = 4;

-- Deleta registro
DELETE FROM tb_pessoa WHERE id_pessoa = 3;

-- Mostra os dados cadastrados na tabela "tb_pessoa"
SELECT * FROM tb_pessoa;