-- Exclui Banco de Dados caso exista
DROP DATABASE IF EXISTS db_streaming;

-- Cria Banco de Dados se não existir
CREATE DATABASE IF NOT EXISTS db_streaming;

-- Usa Banco de Dados
USE db_streaming;

-- Cria tabela caso não exista 'tb_netflix'
CREATE TABLE IF NOT EXISTS tb_netflix (
	id_netflix INT(5) AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_lancamento INT(4) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    produtora VARCHAR(40),
    PRIMARY KEY (id_netflix)
);

-- Cria tabela caso não exista 'tb_amazon_prime'
CREATE TABLE IF NOT EXISTS tb_amazon_prime (
	id_amazon INT(5) AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_lancamento INT(4) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    produtora VARCHAR(40),
    PRIMARY KEY (id_amazon)
);

-- ;insere dados na tabela 'tb_netflix'
INSERT INTO tb_netflix (titulo, ano_lancamento, genero, produtora) 
VALUES ('Massacre da Serra Eletrica', '1974', 'terror', 'Platinum Dunes'),
('Rua do Medo: 1994', '2021', 'terror', 'Chernin Entertainment'),
('Rua do Medo: 1978', '2021', 'terror', 'Chernin Entertainment'),
('Rua do Medo: 1666', '2021','terror', 'Chernin Entertainment'),
('Fuja', '2020', 'terror', 'Lions Gate Entertainment'),
('A Baba', '2017', 'terror', 'Universal Studios'),
('Eli', '2019', 'terror', 'Paramount Players'),
('CAmpo do Medo', '2019', 'terror', 'Copperheart Entertainment'),
('Shrek', '2001', 'Animacao', 'DreamWorks Animation'),
('Shrek 2', '2004', 'Animacao', 'DreamWorks Animation'),
('Shrek Terceiro', '2007', 'Animacao', 'DreamWorks Animation'),
('Shrek Para Sempre', '2010', 'Animacao', 'DreamWorks Animation'),
('Shrek 5', '2021', 'Animacao', 'DreamWorks Animation'),
('Scarface', '1983', 'Drama', 'Universal Studios'),
('Samurai X', '2021', 'Acao', 'Warner Bros'),
('Homem Aranha', '2002', 'Acao', 'Marvel'),
('Homem Aranha 2 X', '2004', 'Acao', 'Marvel'),
('Creed', '2015', 'Esporte', 'Metro-Goldwyn-Mayer'),
('Creed 2', '2018', 'Esporte', 'Metro-Goldwyn-Mayer'),
('Animais Fantasticos', '2016', 'Fantasia', 'Warner Bros'),
('Animais Fantasticos 2', '2018', 'Fantasia', 'Warner Bros'),
('Jumaji', '2017', 'Fantasia', 'Columbia Pictures'),
('Jumaji 2', '2019', 'Fantasia', 'Columbia Pictures'),
('Truque de Mestre', '2013', 'Misterio', 'Summit Entertainment'),
('Truque de Mestre 2', '2016', 'Misterio', 'Summit Entertainment'),
('O dilema das Redes', '2020', 'Documentario', 'Exposure Labs'),
('Fungos Fantasticos', '2019', 'Documentario', 'Moving art Studio'),
('O Segredo', '2006', 'Documentario', 'Prime Time Productions'),
('Pele', '2021', 'Documentario', 'Duprat '),
('O Virgem de 40 anos', '2005', 'Romance', 'Universal Pictures');
 
 -- Lista dados inseridos na tabela 'tb_netflix'
 SELECT * FROM tb_netflix;
 
 -- Insere dados na tabela 'tb_amazon_prime'
 INSERT INTO tb_amazon_prime (titulo, ano_lancamento, genero, produtora) 
VALUES ('Terror extremo', '2018', 'terror', 'Mares Filmes'),
('Terror no Navio', '2014', 'terror', 'A2 Filmes'),
('Piranha', '1978', 'terror', 'Dimension Films'),
('Alucinacao', '2001', 'terror', 'Amres Filmes'),
('Hotel da Morte', '2011', 'terror', 'A2 Filmes'),
('Um Bom Homem', '2008', 'terror', 'Sierra'),
('REC', '2007', 'terror', 'Filmax'),
('REC 2', '2009', 'terror', 'Filmax'),
('A Guerra do Amanha', '2021', 'Ficicao', 'Amazon Studios'),
('Yesterday', '2019', 'Comedia', 'Universal Pictures'),
('Furia Incontrolavel', '2020', 'Animacao', 'Solstice Studios'),
('O Lobo de Wall Street', '2013', 'Drama', 'COLUMBIA'),
('O Jogo da Imitacao', '2014', 'Drama', 'Black Bear Pictures'),
('O Senhor das Armas', '2005', 'Acao', 'Lionsgate'),
('Transformers', '2007', 'Acao', 'Paramount Pictures'),
('Transformers A Vinganca dos Derrotados', '2009', 'Acao', 'Paramount Pictures'),
('O Hobbit: Uma Jornada Inesperada', '2012', 'Acao', 'Warner Bros'),
('O Hobbit: A Desolação de Smaug', '2013', 'Acao', 'Warner Bros'),
('O Hobbit: A Batalha dos Cinco Exércitos', '2014', 'Acao', 'Warner Bros'),
('De Volta para o Futuro 1', '1985', 'Ficcao', 'Universal Studio'),
('De Volta para o Futuro 2', '1989', 'Ficcao', 'Universal Studio'),
('De Volta para o Futuro 3', '1990', 'Ficcao', 'Universal Studio'),
('A Bela e a Fera', '2017', 'Fantasia', 'Eskwad'),
('Oblivion', '2013', 'Fantasia', 'Universal Pictures'),
('Motoqueiro Fantasma 1', '2007', 'Fantasia', 'COLUMBIA'),
('Motoqueiro Fantasma 2', '2011', 'Fantasia', 'COLUMBIA'),
('Os Mercenarios', '2010', 'Acao', 'Lionsgate '),
('John Wick', '2014', 'Acao', 'Summit Entertainment'),
('John Wick', '2017', 'Acao', 'Summit Entertainment'),
('John Wick', '2019', 'Acao', 'Summit Entertainment');

-- Lista dados inseridos na tabela 'tb_amazon_prime'
SELECT * FROM tb_amazon_prime;
 
 -- Faz junção de dados das tabelas 'tb_netflix' e 'tb_amazon_prime' do genero 'terror'
 SELECT * FROM tb_netflix AS a INNER JOIN tb_amazon_prime AS b ON a.genero = b.genero WHERE a.genero = 'terror';
 
 -- Faz junção de dados das tabelas 'tb_netflix' e 'tb_amazon_prime' do ano_lancamento '2019'
 SELECT * FROM tb_netflix AS a INNER JOIN tb_amazon_prime AS b ON a.ano_lancamento = b.ano_lancamento WHERE a.ano_lancamento = '2019';
 
 -- Faz junção de dados das tabelas 'tb_netflix' e 'tb_amazon_prime' do produtora 'Warner Bros'
 SELECT * FROM tb_netflix AS a INNER JOIN tb_amazon_prime AS b ON a.produtora = b.produtora WHERE a.produtora = 'Warner Bros';