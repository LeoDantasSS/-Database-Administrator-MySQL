-- Apaga o banco 'db_manutencao_computadores' caso ele exista
DROP DATABASE IF EXISTS db_manutencao_computadores;

-- Cria banco de dados 'db_mautencao_computadores'
CREATE DATABASE IF NOT EXISTS db_manutencao_computadores;


-- Seleciona banco de dados 'db_manutencao_computadores'
USE db_manutencao_computadores;

-- Cria tabela 'tb_tecnico'
CREATE TABLE IF NOT EXISTS tb_tecnico (
	matricula INT(3) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    cpf VARCHAR(13) NOT NULL UNIQUE,
    email VARCHAR(45) NOT NULL UNIQUE,
    telefone_contato VARCHAR(13) NOT NULL UNIQUE,
    turno VARCHAR(10) NOT NULL,
    PRIMARY KEY(matricula)
);

-- Cria tabela 'tb_fornecedor'
CREATE TABLE IF NOT EXISTS tb_fornecedor (
	cod_fornecedor INT(3) NOT NULL AUTO_INCREMENT,
    nome_fornecedor VARCHAR(45) NOT NULL UNIQUE,
    cnpj VARCHAR(13) NOT NULL UNIQUE,
    email_fornecedor VARCHAR(45) NOT NULL UNIQUE,
    telefone_fornecedor VARCHAR(13) NOT NULL UNIQUE,
    cidade VARCHAR(58) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    quadra_rua VARCHAR(45) NOT NULL,
    lote VARCHAR(10),
    PRIMARY KEY(cod_fornecedor)
);

-- Cria tabela 'tb_servico'
CREATE TABLE IF NOT EXISTS tb_servico (
	cod_servico INT(3) NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    prazo DATE NOT NULL,
    data_servico DATE NOT NULL,
    matricula INT(3) NOT NULL,
    PRIMARY KEY(cod_servico),
    CONSTRAINT FK_tb_servico_tb_tecnico FOREIGN KEY (matricula) REFERENCES tb_tecnico(matricula)
);

-- Cira tabela 'tb_cliente'
CREATE TABLE IF NOT EXISTS tb_cliente (
	cod_cliente INT(3) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    cpf VARCHAR(13) NOT NULL UNIQUE,
    email VARCHAR(45) NOT NULL UNIQUE,
    telefone_contato VARCHAR(13) NOT NULL UNIQUE,
    telfone_celular VARCHAR(13),
    cep VARCHAR(8) NOT NULL,
    cidade VARCHAR(58) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    numero INT(5) NOT NULL,
    complemento VARCHAR(100),
    logradouro VARCHAR(45),
    cod_servico INT(3) NOT NULL,
    PRIMARY KEY(cod_cliente),
    CONSTRAINT FK_tb_cliente_tb_servico FOREIGN KEY (cod_servico) REFERENCES tb_servico(cod_servico)
);

-- Cria tabela 'tb_compra'
CREATE TABLE IF NOT EXISTS tb_compra (
	cod_compra INT NOT NULL AUTO_INCREMENT,
    valor FLOAT(5,2) NOT NULL,
    data_compra DATE NOT NULL,
    cod_cliente INT(3) NOT NULL,
    PRIMARY KEY(cod_compra),
    CONSTRAINT FK_tb_´compra_tb_cliente FOREIGN KEY (cod_cliente) REFERENCES tb_cliente(cod_cliente)
);

-- Cria tabela 'tb_produto'
CREATE TABLE IF NOT EXISTS tb_produto (
	cod_produto INT(5) NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(45) NOT NULL UNIQUE,
    categoria VARCHAR(20),
    fabricante VARCHAR(45) NOT NULL,
    preco FLOAT(5,2) NOT NULL,
    cod_compra INT NOT NULL,
    cod_cliente INT(3) NOT NULL,
    PRIMARY KEY(cod_produto),
    CONSTRAINT FK_tb_produto_tb_compra FOREIGN KEY (cod_compra) REFERENCES tb_compra(cod_compra),
    CONSTRAINT FK_tb_produto_tb_cliente FOREIGN KEY (cod_cliente) REFERENCES tb_cliente(cod_cliente)
);

-- Cria tabela 'tb_fornece'
CREATE TABLE IF NOT EXISTS tb_fornece (
	cod_fornecimento INT(4) NOT NULL AUTO_INCREMENT,
    data_fornecimento DATE NOT NULL,
    cod_fornecedor INT(3) NOT NULL,
    cod_produto INT(5) NOT NULL,
    PRIMARY KEY(cod_fornecimento),
    CONSTRAINT FK_tb_fornece_tb_fornecedor FOREIGN KEY (cod_fornecedor) REFERENCES tb_fornecedor(cod_fornecedor),
    CONSTRAINT FK_tb_fornece_tb_produto FOREIGN KEY (cod_produto) REFERENCES tb_produto(cod_produto)
);