CREATE DATABASE db_livraria;

USE db_livraria;

CREATE TABLE tb_editora (
	id_editora INT(4) AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL UNIQUE,
    PRIMARY KEY (id_editora)
);

CREATE TABLE tb_livro (
	cod_livro INT(6) AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    nome_autor VARCHAR(40) NOT NULL,
    sobrenome_autor VARCHAR(100) NOT NULL,
    edicao INT(2) NOT NULL,
    assunto VARCHAR(50),
    paginas INT(4) NOT NULL,
    isbn VARCHAR(17) NOT NULL UNIQUE,
    id_editora INT(4) NOT NULL,
    PRIMARY KEY (cod_livro),
    FOREIGN KEY (id_editora) REFERENCES tb_editora(id_editora)
);

CREATE TABLE tb_cliente (
	id_cliente INT(7) AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sobrenome VARCHAR(100),
    email VARCHAR(50) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    cpf_cnpj VARCHAR(25) NOT NULL UNIQUE,
    PRIMARY KEY (id_cliente)
);

CREATE TABLE tb_compra (
	cod_compra INT(10) AUTO_INCREMENT,
    data_compra DATE NOT NULL,
    cod_livro INT(6) NOT NULL,
    id_cliente INT(7) NOT NULL,
    PRIMARY KEY (cod_compra),
    FOREIGN KEY (cod_livro) REFERENCES tb_livro(cod_livro),
    FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente)
);

INSERT INTO tb_editora (nome, email, telefone) VALUES ('Sarutobi', 'sarutobi@gmail.com', '40028922');
INSERT INTO tb_editora (nome, email, telefone) VALUES ('Nanadaime', 'nanadaime@gmail.com', '22890204');
INSERT INTO tb_editora (nome, email, telefone) VALUES ('Kazekage', 'kazekage@gmail.com', '20204545');

INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados e Seus Comandos', 'Yamamoto', 'Madoka', '2', 'TI', '100', '1111111111111', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados tIPOS', 'Ishikawa', 'Mai', '3', 'Oracle', '150', '2222222222222', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Normalizacao de dados', 'Koga', 'Maiko', '4', 'Postgree', '120', '3333333333333', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados Modelo em Rede', 'Kaneda', 'Maki', '5', 'ServeSQL', '115', '4444444444444', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados Modelo Relacional', 'Nagano', 'Makoto', '6', 'Java', '156', '5555555555555', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados Modelo Orientado a Objetos', 'Ootsuka', 'Kyung', '7', 'MySQL', '231', '6666666666666', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados e Suas Aventuras', 'Hamaguchi', 'Kotone', '8', 'MySQL', '235', '7777777777777', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados Sistemas Objeto-Relacionais', 'Morioka', 'Kotaro', '9', 'MySQL', '125', '8888888888888', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('SGBD', 'Ueki', 'Koji', '10', 'MySQL', '123', '9999999999999', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Categorias de Modelos de Dados', 'Tachibana', 'Ryotaro', '2', 'MySQL', '105', '1234567891231', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Esquemas e Instancias', 'Shibasaki', 'Sachiko', '4', 'MySQL', '109', '2345678912345', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem do Banco de Dados', 'Tsuchihashi', 'Sakiko', '5', 'Linguagem de Programacao', '265', '3456789123456', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('SQL', 'Kuribayashi', 'Sango', '6', 'Linguagem de Programacao', '234', '4567891234567', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Comando INT', 'Munakata', 'Satoshi', '7', 'Comando', '152', '5678912345678', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Comando DELETE', 'Edamatsu', 'Tadash', '1', 'Comando', '237', '6789123456789', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Comando UPDATE', 'Yumisashi', 'Takafumi', '2', 'Comando', '239', '7891234567891', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Comando CREATE', 'Kumazawa', 'Takayuk', '4', 'Comando', '238', '8912345678912', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Comando DROP', 'Nobuhara', 'Tatsuya', '2', 'Comando', '125', '9123456789123', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Comando JOIN', 'Oho', 'Tetsuo', '3', 'Comando', '128', '0123456789123', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Comando USE', 'Kamiouji', 'Tomio', '4', 'Comando', '234', '0234567891234', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Banco de Dados e suas Formas', 'Mayumi', 'Toru', '2', 'MySQL', '264', '0345678912345', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem JAVA', 'Michi', 'Toshio', '1', 'Linguagem de Programacao', '289', '0456789123456', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem PYTHON', 'Hiroaki', 'Tsukiko', '2', 'Linguagem de Programacao', '278', '0567891234561', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem PHP', 'Hayato', 'Yasuo', '2', 'Linguagem de Programacao', '298', '0678912345678', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem C#', 'Hachiro', 'Yuudai', '3', 'Linguagem de Programacao', '300', '0789123456789', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem C+', 'Emiko', 'Yuriko', '1', 'Linguagem de Programacao', '456', '0891234567891', '2');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem JAVASCRIPT', 'Fuyuki', 'Yumiko', '1', 'Linguagem de Programacao', '128', '0912345678912', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem RUBY', 'Goro', 'Yuichi', '1', 'Linguagem de Programacao', '147', '7418529630741', '1');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem SHELL', 'Bunko', 'Yoshito', '2', 'Linguagem de Programacao', '258', '8529637410741', '3');
INSERT INTO tb_livro (titulo, nome_autor, sobrenome_autor, edicao, assunto, paginas, isbn, id_editora) VALUES ('Linguagem KOTLIN', 'Azami', 'Yoshio', '1', 'Linguagem de Programacao', '369', '9637418520852', '1');

INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Naruto', 'Uzumaki', 'naruto@gmail.com', '12345678912', '04715407060');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Sasuke', 'Uchiha', 'sasuke@gmail.com', '78945612312', '58745656045');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Sakura', 'Haruno', 'sakura@gmail.com', '78451289563', '89556027076');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Kakashi', 'Hatake', 'kakashi@gmail.com', '23568989562', '72651242004');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Hiruzen', 'Sarutobi', 'hiruzen@gmail.com', '78451223458', '82239745096');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Rock', 'Lee', 'rock@gmail.com', '51457410520', '35470515095');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Might', 'Guy', 'might@gmail.com', '89785645897', '50975256041');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Neji', 'Hyuga', 'neji@gmail.com', '12231245781', '09851641073');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Hinata', 'Hyuga', 'hinata@gmail.com', '23122312231', '86227826030');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Shino', 'Aburame', 'shino@hmail.com', '11232313212', '20712226010');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Ino', 'Yamanaka', 'ino@gmail.com', '61561561515', '87104853090');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Shikamaru', 'Nara', 'shikamaru@gmail.com', '54894895656', '54099482030');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Choji', 'Akimichi', 'choji@gmail.com', '56465651651', '06069302052');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Kabuto', 'Yakushi', 'kabuto@gmail.com', '84186151651', '13589387092');
INSERT INTO tb_cliente (nome, sobrenome, email, telefone, cpf_cnpj) VALUES ('Gaara', 'Nara', 'gaara@gmail.com', '87848948456', '17102861052');

INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/01/31', '5', '1');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/02/11', '3', '2');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/03/21', '2', '3');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/04/02', '7', '4');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/04/15', '5', '5');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/06/30', '6', '7');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/07/31', '3', '8');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/08/21', '4', '9');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/08/29', '2', '10');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/09/02', '12', '11');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/09/03', '22', '12');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/10/09', '23', '13');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/11/21', '17', '14');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/12/25', '18', '15');
INSERT INTO tb_compra (data_compra, cod_livro, id_cliente) VALUES ('2021/12/29', '5', '6');

SELECT * FROM tb_editora;

SELECT * FROM tb_livro;

SELECT * FROM tb_cliente;

SELECT * FROM tb_compra;