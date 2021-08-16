DROP DATABASE IF EXISTS db_locauto;

CREATE DATABASE IF NOT EXISTS db_locauto;

USE db_locauto;

CREATE TABLE IF NOT EXISTS tb_funcionario (
	matricula INT(3) AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    rg VARCHAR(15) NOT NULL UNIQUE,
    cpf VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    turno VARCHAR(10) NOT NULL,
    PRIMARY KEY (matricula)
);

CREATE TABLE IF NOT EXISTS tb_concessionaria (
	codigo_concessionaria INT(3) AUTO_INCREMENT,
    razao_social VARCHAR(40) NOT NULL UNIQUE,
    nome_fantasia VARCHAR(40),
    cnpj VARCHAR(25) NOT NULL UNIQUE,
    PRIMARY KEY (codigo_concessionaria)
);

CREATE TABLE IF NOT EXISTS tb_carro (
	id_carro INT(4) AUTO_INCREMENT,
    modelo VARCHAR(30) NOT NULL,
    ano VARCHAR(4) NOT NULL,
    cor VARCHAR(25) NOT NULL,
    numero_portas INT(1) NOT NULL,
    valor FLOAT(9,2) NOT NULL,
    placa VARCHAR(8) NOT NULL UNIQUE,	
    codigo_concessionaria INT(3) NOT NULL,
    PRIMARY KEY (id_carro),
    CONSTRAINT FK_tb_carro_tb_concecionaria FOREIGN KEY (codigo_concessionaria) REFERENCES tb_concessionaria(codigo_concessionaria)
);

CREATE TABLE IF NOT EXISTS tb_cliente (
	id_cliente INT(3) AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    rg VARCHAR(15) NOT NULL UNIQUE,
    cpf VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    cidade VARCHAR(62) NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    complemento VARCHAR(100),
    logradouro VARCHAR(50) NOT NULL,
    numero VARCHAR(6),
    id_carro INT(4) NOT NULL,
    PRIMARY KEY (id_cliente),
    CONSTRAINT FK_tb_cliente_tb_carro FOREIGN KEY (id_carro) REFERENCES tb_carro(id_carro)
);

CREATE TABLE IF NOT EXISTS tb_contato (
	id_contato INT(3) AUTO_INCREMENT,
    telefone_contato VARCHAR(15) NOT NULL,
    telefone_fixo VARCHAR(15),
    id_cliente INT(3) NOT NULL,
    PRIMARY KEY (id_contato),
    CONSTRAINT FK_tb_cliente_tb_contato FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente)
);

INSERT INTO tb_funcionario (nome, sobrenome, rg, cpf, email, turno) 
VALUES ('Junio', 'Soares', '3333333', '12345678912', 'junio@gmail.com', 'Matutino'),
('Mario', 'Soares', '4444444', '23456789123', 'mario@gmail.com', 'Matutino'),
('Francisco', 'Silva', '5555555', '34567891234', 'francisco@gmail.com', 'Matutino'),
('Mateus', 'Sousa', '6666666', '45678912345', 'mateus@gmail.com', 'Vespertino'),
('Hugo', 'Santos', '77777777', '56789123456', 'hugo@gmail.com', 'Vespertino'),
('David', 'Breno', '8888888', '67891234567', 'david@gmail.com', 'Vespertino'),
('Anderson', 'Vitor', '9999999', '78912345678', 'anderson@gmail.com', 'Noturno'),
('Vitor', 'Hugo', '0000000', '89123456789', 'vitor@gmail.com', 'Noturno'),
('Tamiris', 'Soares', '3333332', '91234567899', 'tamiris@gmail.com', 'Matutino'),
('Rafaela', 'Silva', '2222222', '00012345678', 'radaeka@gmail.com', 'Vespertino');

INSERT INTO tb_concessionaria (razao_social, nome_fantasia, cnpj) 
VALUES ('Volkswagen LTDA', 'Volkswagen', '59.104.422/0001-50'),
('Fiat LTDA', 'Fiat', '16.701.716/0001-56'),
('General Motors do Brasil LTDA', 'Chevrolet', '59.275.792/0001-50'),
('Honda Automóveis do Brasil LTDA', 'Honda', '01.192.333/0001-22'),
('Renault do Brasil S.A', 'Renault', '00.913.443/0001-73'),
('HYUNDAI MOTOR BRASIL LTDA', 'Hyundai', '10.394.422/0001-42');

INSERT INTO tb_carro (modelo, ano, cor, numero_portas, valor, placa, codigo_concessionaria) 
VALUES ('Jetta', '2020', 'Preto', 4, 599.00, 'JIU-2055', '1'),
 ('Jetta', '2019', 'Amarelo', 2, 549.00, 'JHL-6316', '1'),
 ('Jetta', '2017', 'Azul', 2, 489.00, 'JJN-3852', '1'),
 ('Golf', '2019', 'Branco', 2, 500.00, 'JHR-5311', '1'),
 ('Gol', '2020', 'Prata', 4, 549.00, 'JHW-8437', '1'),
 ('Gol', '2015', 'Preto', 2, 439.00, 'JHA-9844', '1'),
 ('Gol', '2018', 'Vermelho', 4, 459.00, 'JIQ-8748', '1'),
 ('Jetta', '2019', 'Amarelo', 2, 549.00, 'JHF-8036', '1'),
 ('Palio', '2020', 'Azul', 2, 429.00, 'JEV-2630', '2'),
 ('Palio', '2019', 'Branca', 2, 399.00, 'JFW-2420', '2'),
 ('Palio', '2020', 'Prata', 4, 429.00, 'JIL-3965', '2'),
 ('Celta', '2015', 'Preto', 2, 399.00, 'JEW-6334', '3'),
 ('Fiat', '2018', 'Vermelho', 4, 399.00, 'JKF-2541', '2'),
 ('Camaro', '2019', 'Amarelo', 2, 549.00, 'JJJ-8158', '3'),
 ('Camaro', '2017', 'Preta', 2, 489.00, 'JHG-2673', '3'),
 ('Palio', '2019', 'Branco', 2, 499.00, 'JDV-3794', '2'),
 ('Civic', '2020', 'Prata', 4, 599.00, 'JIB-8693', '4'),
 ('Civic', '2018', 'Preto', 2, 529.00, 'JGY-0946', '4'),
 ('Civic', '2020', 'Prata', 4, 599.00, 'JJS-0152', '4'),
 ('Celta', '2019', 'Amarelo', 2, 349.00, 'JEA-4385', '3'),
 ('Celta', '2017', 'Azul', 2, 349.00, 'JIY-0216', '3'),
 ('Celta', '2019', 'Branco', 2, 349.00, 'JEK-7128', '3'),
 ('Uno', '2020', 'Prata', 4, 449.00, 'JIC-7511', '2'),
 ('Uno', '2015', 'Preto', 2, 399.00, 'JIV-6568', '2'),
 ('Uno', '2018', 'Vermelho', 4, 429.00, 'JIT-7766', '2'),
 ('Sandero', '2019', 'Amarelo', 2, 449.00, 'JEU-8854', '5'),
 ('Sandero', '2017', 'Azul', 2, 389.00, 'JEI-8478', '5'),
 ('Sandero', '2019', 'Branco', 2, 399.00, 'JEF-7887', '5'),
 ('HB20', '2020', 'Prata', 4, 499.00, 'JEF-7787', '6'),
 ('HB20', '2015', 'Preto', 2, 429.00, 'JFG-2849', '6');
 
 SELECT * FROM tb_carro;
 
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Joana', 'Emily', '4282817842', '31755842503', 'joana@gmail.com', 'Rio Branco', 'Habitar Brasil', 'esquina', 'Rua São Marcos', '289', '1');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Debora', 'Antonia', '294560014', '1034855082', 'debora@gmail.com', 'Fortaleza', 'Vicente Pizon', 'comercial', 'Avenida Clovis', '555', '2');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Paulo', 'Henrique', '279016244', '55172255788', 'paulo@gmail.com', 'Aracaju', 'Atalaia', 'esquina', 'Rua Aloisio', '210', '3');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Alessandra', 'Lara', '132578967', '9047317300', 'alessandra@gmail.com', 'Marica', 'Jardim Atlantico', 'comercial', 'Rua do Lado', '561', '4');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro)  
VALUES ('Samuel', 'Tiago', '428697707', '738427425753', 'samuel@gmail.com', 'Caxias do Sul', 'Mariland', 'comercial', 'Rua Idalvina', '650', '5');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Nathan', 'Ria', '13435334', '57170953232', 'nathan@gmail.com', 'Salvador', 'Cajazeiras', 'esquina', 'Caminho 14', '219', '6');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Pietra', 'Jaqueline', '255949479', '37805585997', 'pietra@gmail.com', 'Salvador', 'Cajazeiras', 'comercial', 'Caminho 23', '583', '7');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Marcelo', 'Joaquim', '126777499', '95330778913', 'marcelo@gmail.com', 'Palmas', 'Plano Diretor', 'comercial', 'Quadra 110', '453', '8');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Andreia', 'Isis', '213760411', '19371722100', 'andreia@gmail.com', 'Brasilia', 'Recanto das Emas', 'esquina', 'Quadra 307', '793', '9');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Bruna', 'Sarha', '287608037', '84967706215', 'bruna@gmail.com', 'Paranagua', 'Loteamento', 'comercial', 'Travessa', '598', '10');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Eloa', 'Antonella', '265240785', '8504850787', 'eloa@gmail.com', 'Florianopolis', 'Campeche', 'comercial', 'Rua Tereza', '734', '11');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Lucca', 'Kaue', '110714933', '55825853464', 'lucca@gmail.com', 'Maceio', 'Jacintinho', '', 'Rua Melo', '270', '12');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Giovani', 'Tiago', '330430713', '80144529092', 'giovani@gmail.com', 'Aracaju', 'Japaozinho', '', 'Rua Sete', '454', '13');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES('Leandro', 'Joao', '459105206', '44569634923', 'leandro@gmail.com', 'Boa Vista', 'Cinturao Verde', 'em frente ao mercado', 'Rua São Leopoldo', '877', '14');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Hadassa', 'Elisa', '471675106', '62050505667', 'hadassa@gmail.com', 'Iguatu', 'Planalto', '', 'Rua Julio', '198', '15');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Catarina', 'Mariane', '445850991', '72177518377', 'catarina@gmail.com', 'Ipatininga', 'Ideal', '', 'Rua Pedro', '453', '16');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Francisca', 'Rafaela', '369731499', '21545566208', 'francisca@gmail.com', 'Campina Grande', 'Malvinas', 'em frente ao mercado', 'Rua Estela', '126', '17');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Cezar', 'Raul', '305769388', '19076089906', 'cezar@gmail.com', 'Porto Velho', 'Castanheira', '', 'Rua Biriba', '648', '18');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Augusto', 'Joao', '145437206', '91677965835', 'augusto@gmail.com', 'Maceio', 'Farol', '', 'Rua Goncalves', '299', '19');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Raimunda', 'Gabriela', '323943494', '74772340696', 'raimunda@gmail.com', 'Caxias', 'São Francisco', 'em frente ao mercado', 'Rua do Fio', '607', '20');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Sophia', 'Isabelly', '473618643', '22375845757', 'sophia@gmail.com', 'Manaus', 'Cidade de Deus', '', 'Rua Monte', '598', '21');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Sara', 'Evelin', '349375082', '53046701918', 'sara@gmail.com', 'Vila Velha', 'Santa Monica', '', 'Rua Vinte', '534', '22');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Leandro', 'Fabio', '424763242', '06996854008', 'leandroo@gmail.com', 'Maraba', 'Morada', 'em frente ao mercado', 'Rua da Igualdade', '223', '23');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Allana', 'Raimunda', '124593628', '27752858722', 'allana@gmail.com', 'Teresina', 'Centro', '', 'Praca Marechal', '997', '24');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Lara', 'Aparecida', '416962531', '77956865670', 'lara@gmail.com', 'Maceio', 'Benedito', '', 'Quadra', '517', '25');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Osvaldo', 'Felipe', '47475004801', '68433271172', 'osvaldo@gmail.com', 'Ponta Pora', 'Vila Boa', 'em frente ao mercado', 'Rua Nilo', '965', '26');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Kamily', 'Isabeli', '269306924', '17624918935', 'kamily@gmail.com', 'Nova Friburgo', 'Prado', '', 'Rua Pacheco', '395', '27');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Joao', 'Benjamin', '372430119', '20430140649', 'joao@gmail.com', 'Teresina', 'Cidade Nova', 'em frente ao mercado', 'Rua Helio', '668', '28');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Antonia', 'Juliana', '421784045', '14024132547', 'antonia@gmail.com', 'Cachoeira', 'Doutor Gilson', '', 'Rua Anisio', '202', '29');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Alexandre', 'Caua', '135175419', '52705049120', 'alexaandre@gmail.com', 'Ariquenes', 'Jardim Torge', 'em frente ao mercado', 'Rua Maraba', '400', '30');

INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Elis', 'Antonella', '741852963', '74185296374', 'elis@gmail.com', 'Florianopolis', 'Campeche', 'comercial', 'Rua Tereza', '777', '1');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Lucas', 'Gomez', '852963741', '85296374185', 'lucas@gmail.com', 'Maceio', 'Jacintinho', '', 'Rua Melo', '235', '2');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Giovana', 'Santos', '963741852', '96374185296', 'giovana@gmail.com', 'Aracaju', 'Japaozinho', '', 'Rua Sete', '325', '3');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES('Leonardo', 'Joao', '147258369', '147258369', 'leo@gmail.com', 'Boa Vista', 'Cinturao Verde', 'em frente ao mercado', 'Rua São Leopoldo', '877', '4');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Marisa', 'Elisa', '258369147', '25836914725', 'marisa@gmail.com', 'Iguatu', 'Planalto', '', 'Rua Julio', '199', '5');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Clelia', 'Mariane', '369147258', '36914725836', 'clelia@gmail.com', 'Ipatininga', 'Ideal', '', 'Rua Pedro', '455', '6');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Francinei', 'Gomes', '321654987', '32165498732', 'franci@gmail.com', 'Campina Grande', 'Malvinas', 'em frente ao mercado', 'Rua Estela', '126', '7');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Cezare', 'Raul', '654987321', '65498732165', 'cezare@gmail.com', 'Porto Velho', 'Castanheira', '', 'Rua Biriba', '666', '8');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Augustinho', 'Joao', '987321654', '98732165498', 'augustinho@gmail.com', 'Maceio', 'Farol', '', 'Rua Goncalves', '300', '9');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Raimun', 'Gabriela', '951623847', '951623847', 'raimu@gmail.com', 'Caxias', 'São Francisco', 'em frente ao mercado', 'Rua do Fio', '667', '10');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Milena', 'Isabelly', '847623951', '84795162233', 'mile@gmail.com', 'Manaus', 'Cidade de Deus', '', 'Rua Monte', '600', '11');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Saara', 'Evelin', '6238479515', '623847951626', 'saraa@gmail.com', 'Vila Velha', 'Santa Monica', '', 'Rua Vinte', '534', '12');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Leaandro', 'Fabio', '785566323', '89562378451', 'leanndroo@gmail.com', 'Maraba', 'Morada', 'em frente ao mercado', 'Rua da Igualdade', '223', '13');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Alvis', 'Raimunda', '235689212', '23568912459', 'allanaa@gmail.com', 'Teresina', 'Centro', '', 'Praca Marechal', '1000', '14');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Laraa', 'Alves', '78561245896', '12457856782', 'lari@gmail.com', 'Maceio', 'Benedito', '', 'Quadra', '522', '15');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Osvaldinho', 'Felipe', '895623785', '23564512235', 'osvaldinho@gmail.com', 'Ponta Pora', 'Vila Boa', 'em frente ao mercado', 'Rua Nilo', '965', '16');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Camila', 'Isabeli', '568978456', '23568956232', 'kamilaa@gmail.com', 'Nova Friburgo', 'Prado', '', 'Rua Pacheco', '400', '17');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Joaozinho', 'Benjamin', '784556458', '785645879896', 'joainho@gmail.com', 'Teresina', 'Cidade Nova', 'em frente ao mercado', 'Rua Helio', '721', '18');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Antonio', 'Julio', '895645899', '89895689569', 'antonioo@gmail.com', 'Cachoeira', 'Doutor Gilson', '', 'Rua Anisio', '222', '19');
INSERT INTO tb_cliente (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero, id_carro) 
VALUES ('Alexandre', 'O Grande', '568956899', '23568956564', 'alexandreogrande@gmail.com', 'Ariquenes', 'Jardim Torge', 'em frente ao mercado', 'Rua Maraba', '444', '20');

SELECT * FROM tb_cliente;

INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99358-7845', '(61) 3968-1245', 27);
INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99358-7996', '(61) 3333-5656', '28');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99058-5555', '(61) 4444-8989', '29');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99358-7788', '(61) 3968-0000', '30');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99338-7901', '(61) 3008-5899', '14');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99456-7996', '(61) 3968-4561', '15');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99558-7996', '(61) 3968-1234', '16');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, id_cliente) 
VALUES ('(61) 99358-0000', '(61) 3968-7894', '17'),
('(61) 99333-0001', '(61) 3968-4564', '18'),
('(61) 99444-0052', '(61) 4422-0058', '19'),
('(61) 98821-2323', '(61) 2323-4545', '20'),
('(61) 98758-2222', '(61) 5555-4444', '21'),
('(61) 99358-7777', '(61) 3333-0022', '22'),
('(61) 99358-8888', '(61) 4444-1111', '23'),
('(61) 99038-6996', '(61) 3003-7229', '5'),
('(61) 98868-7996', '(61) 4008-5820', '6'),
('(61) 99668-7996', '(61) 4004-5830', '7'),
('(61) 98700-7876', '(61) 3008-0003', '8'),
('(61) 99998-7996', '(61) 4321-5822', '9'),
('(61) 98888-7997', '(61) 3004-5889', '10'),
('(61) 98858-7991', '(61) 3003-5824', '11'),
('(61) 99999-7998', '(61) 3004-5889', '12'),
('(61) 99888-7900', '(61) 3968-1229', '13'),
('(61) 99558-6666', '(61) 3968-9999', '24'),
('(61) 99358-7778', '(61) 3968-7777', '25'),
('(61) 99300-6666', '(61) 3003-0000', '26'),
('(61) 99358-7996', '(61) 3968-5829', '1'),
('(61) 88358-7666', '(61) 3468-5826', '2'),
('(61) 99758-7995', '(61) 3008-5829', '3'),
('(61) 98558-7996', '(61) 3004-5839', '4'),
('(61) 98758-2122', '(61) 5555-4244', '31'),
('(61) 99358-1177', '(61) 3333-0022', '32'),
('(61) 99358-8788', '(61) 4444-1311', '33'),
('(61) 99038-6966', '(61) 3033-7229', '34'),
('(61) 98868-7966', '(61) 4008-5620', '35'),
('(61) 99668-7986', '(61) 4504-5830', '36'),
('(61) 98700-7886', '(61) 3308-0003', '37'),
('(61) 99968-7996', '(61) 4322-5822', '38'),
('(61) 98888-6565', '(61) 3004-5880', '39'),
('(61) 98888-7891', '(61) 3093-5824', '40'),
('(61) 99999-7878', '(61) 3004-5566', '41'),
('(61) 99988-7930', '(61) 3968-1329', '42'),
('(61) 99558-2366', '(61) 3968-8399', '43'),
('(61) 95658-7778', '(61) 5668-7777', '44'),
('(61) 99300-7666', '(61) 3003-3000', '45'),
('(61) 92358-7996', '(61) 3968-5829', '46'),
('(61) 83358-7666', '(61) 3468-5626', '47'),
('(61) 94758-7995', '(61) 3008-5829', '48'),
('(61) 95558-7996', '(61) 3004-5559', '49'),
('(61) 96558-7996', '(61) 3004-5839',  '50');
 
SELECT a.nome, a.sobrenome, b.telefone_contato, c.modelo FROM tb_cliente AS a INNER JOIN tb_contato AS b 
ON a.id_cliente = b.id_cliente INNER JOIN tb_carro AS c ON a.id_carro = c.id_carro;
