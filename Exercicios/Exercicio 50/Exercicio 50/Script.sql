DROP DATABASE IF EXISTS db_cadastro;

CREATE DATABASE IF NOT EXISTS db_cadastro;

USE db_cadastro;

CREATE TABLE IF NOT EXISTS tb_usuario (
	id_usuario INT(3) AUTO_INCREMENT,
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
    PRIMARY KEY (id_usuario)
);

CREATE TABLE IF NOT EXISTS tb_contato (
	id_contato INT(3) AUTO_INCREMENT,
    telefone_contato VARCHAR(15) NOT NULL,
    telefone_fixo VARCHAR(15),
    telefone_celular VARCHAR(15),
    telefone_comercial VARCHAR(15),
    id_usuario INT(3) NOT NULL,
    PRIMARY KEY (id_contato),
    CONSTRAINT FK_tb_usuario_tb_contato FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario)
);

INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Joana', 'Emily', '4282817842', '31755842503', 'joana@gmail.com', 'Rio Branco', 'Habitar Brasil', 'esquina', 'Rua São Marcos', '289');

INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Debora', 'Antonia', '294560014', '10348558082', 'debora@gmail.com', 'Fortaleza', 'Vicente Pizon', 'comercial', 'Avenida Clovis', '555');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Paulo', 'Henrique', '279016244', '55172255788', 'paulo@gmail.com', 'Aracaju', 'Atalaia', 'esquina', 'Rua Aloisio', '210');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Alessandra', 'Lara', '132578967', '9047317300', 'alessandra@gmail.com', 'Marica', 'Jardim Atlantico', 'comercial', 'Rua do Lado', '561');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Samuel', 'Tiago', '428697707', '738427425753', 'samuel@gmail.com', 'Caxias do Sul', 'Mariland', 'comercial', 'Rua Idalvina', '650');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Nathan', 'Ria', '13435334', '57170953232', 'nathan@gmail.com', 'Salvador', 'Cajazeiras', 'esquina', 'Caminho 14', '219');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Pietra', 'Jaqueline', '255949479', '37805585997', 'pietra@gmail.com', 'Salvador', 'Cajazeiras', 'comercial', 'Caminho 23', '583');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Marcelo', 'Joaquim', '126777499', '95330778913', 'marcelo@gmail.com', 'Palmas', 'Plano Diretor', 'comercial', 'Quadra 110', '453');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Andreia', 'Isis', '213760411', '19371722100', 'andreia@gmail.com', 'Brasilia', 'Recanto das Emas', 'esquina', 'Quadra 307', '793');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Bruna', 'Sarha', '287608037', '84967706215', 'bruna@gmail.com', 'Paranagua', 'Loteamento', 'comercial', 'Travessa', '598');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Eloa', 'Antonella', '265240785', '8504850787', 'eloa@gmail.com', 'Florianopolis', 'Campeche', 'comercial', 'Rua Tereza', '734');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Lucca', 'Kaue', '110714933', '55825853464', 'lucca@gmail.com', 'Maceio', 'Jacintinho', '', 'Rua Melo', '270');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Giovani', 'Tiago', '330430713', '80144529092', 'giovani@gmail.com', 'Aracaju', 'Japaozinho', '', 'Rua Sete', '454');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES('Leandro', 'Joao', '459105206', '44569634923', 'leandro@gmail.com', 'Boa Vista', 'Cinturao Verde', 'em frente ao mercado', 'Rua São Leopoldo', '877');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Hadassa', 'Elisa', '471675106', '62050505667', 'hadassa@gmail.com', 'Iguatu', 'Planalto', '', 'Rua Julio', '198');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Catarina', 'Mariane', '445850991', '72177518377', 'catarina@gmail.com', 'Ipatininga', 'Ideal', '', 'Rua Pedro', '453');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Francisca', 'Rafaela', '369731499', '21545566208', 'francisca@gmail.com', 'Campina Grande', 'Malvinas', 'em frente ao mercado', 'Rua Estela', '126');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Cezar', 'Raul', '305769388', '19076089906', 'cezar@gmail.com', 'Porto Velho', 'Castanheira', '', 'Rua Biriba', '648');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Augusto', 'Joao', '145437206', '91677965835', 'augusto@gmail.com', 'Maceio', 'Farol', '', 'Rua Goncalves', '299');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Raimunda', 'Gabriela', '323943494', '74772340696', 'raimunda@gmail.com', 'Caxias', 'São Francisco', 'em frente ao mercado', 'Rua do Fio', '607');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Sophia', 'Isabelly', '473618643', '22375845757', 'sophia@gmail.com', 'Manaus', 'Cidade de Deus', '', 'Rua Monte', '598');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Sara', 'Evelin', '349375082', '53046701918', 'sara@gmail.com', 'Vila Velha', 'Santa Monica', '', 'Rua Vinte', '534');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Leandro', 'Fabio', '424763242', '06996854008', 'leandroo@gmail.com', 'Maraba', 'Morada', 'em frente ao mercado', 'Rua da Igualdade', '223');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Allana', 'Raimunda', '124593628', '27752858722', 'allana@gmail.com', 'Teresina', 'Centro', '', 'Praca Marechal', '997');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Lara', 'Aparecida', '416962531', '77956865670', 'lara@gmail.com', 'Maceio', 'Benedito', '', 'Quadra', '517');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Osvaldo', 'Felipe', '47475004801', '68433271172', 'osvaldo@gmail.com', 'Ponta Pora', 'Vila Boa', 'em frente ao mercado', 'Rua Nilo', '965');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Kamily', 'Isabeli', '269306924', '17624918935', 'kamily@gmail.com', 'Nova Friburgo', 'Prado', '', 'Rua Pacheco', '395');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Joao', 'Benjamin', '372430119', '20430140649', 'joao@gmail.com', 'Teresina', 'Cidade Nova', 'em frente ao mercado', 'Rua Helio', '668');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Antonia', 'Juliana', '421784045', '14024132547', 'antonia@gmail.com', 'Cachoeira', 'Doutor Gilson', '', 'Rua Anisio', '202');
INSERT INTO tb_usuario (nome, sobrenome, rg, cpf, email, cidade, bairro, complemento, logradouro, numero) 
VALUES ('Alexandre', 'Caua', '135175409', '52705049100', 'alexandre@gmail.com', 'Ariquenes', 'Jardim Torge', 'em frente ao mercado', 'Rua Maraba', '400');

SELECT * FROM tb_usuario;

INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-7845', '(61) 3968-1245', '', '', 27);
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-7996', '(61) 3333-5656', '(61) 3968-5500', '', '28');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99058-5555', '(61) 4444-8989', '', '', '29');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-7788', '(61) 3968-0000', '', '(61) 3968-6600', '30');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99338-7901', '(61) 3008-5899', '(61) 3968-0077', '', '14');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99456-7996', '(61) 3968-4561', '', '', '15');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99558-7996', '(61) 3968-1234', '', '(61) 3968-0088', '16');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-0000', '(61) 3968-7894', '', '', '17');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99333-0001', '(61) 3968-4564', '(61) 3968-0099', '', '18');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99444-0052', '(61) 4422-0058', '', '', '19');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 98821-2323', '(61) 2323-4545', '', '(61) 3968-1100', '20');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 98758-2222', '(61) 5555-4444', '', '', '21');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-7777', '(61) 3333-0022', '(61) 3968-2200', '', '22');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-8888', '(61) 4444-1111', '', '', '23');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99038-6996', '(61) 3003-7229', '', '', '5');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 98868-7996', '(61) 4008-5820', '', '(61) 3968-0033', '6');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99668-7996', '(61) 4004-5830', '', '', '7');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 98700-7876', '(61) 3008-0003', '(61) 3968-0044', '', '8');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99998-7996', '(61) 4321-5822', '', '', '9');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 98888-7997', '(61) 3004-5889', '', '(61) 3968-0055', '10');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 98858-7991', '(61) 3003-5824', '', '', '11');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99999-7998', '(61) 3004-5889', '', '(61) 3968-0066', '12');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99888-7900', '(61) 3968-1229', '', '', '13');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99558-6666', '(61) 3968-9999', '', '(61) 3968-3300', '24');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-7778', '(61) 3968-7777', '', '', '25');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99300-6666', '(61) 3003-0000', '', '(61) 3968-4400', '26');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99358-7996', '(61) 3968-5829', '(61) 3333-4444', '', '1');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 88358-7666', '(61) 3468-5826', '', '(61) 3968-0011', '2');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 99758-7995', '(61) 3008-5829', '', '', '3');
INSERT INTO tb_contato (telefone_contato, telefone_fixo, telefone_celular, telefone_comercial, id_usuario) 
VALUES ('(61) 98558-7996', '(61) 3004-5839', '', '(61) 3968-0022', '4');

SELECT * FROM tb_contato;

SELECT a.id_usuario, a.nome, a.sobrenome, b.id_contato, b.telefone_contato FROM tb_usuario AS a INNER JOIN tb_contato AS b ON a.id_usuario = b.id_contato;