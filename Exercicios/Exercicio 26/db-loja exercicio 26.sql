CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produto (
	id_produto INT(3) AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    un_venda VARCHAR(10) NOT NULL,
    categoria VARCHAR(20),
    marca VARCHAR(20) NOT NULL,
    fornecedor VARCHAR(40) NOT NULL,
    cod_barras VARCHAR(15) NOT NULL UNIQUE,
    valor_venda FLOAT(5,2),
    PRIMARY KEY(id_produto)
);

INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabo lightning blackberry br ds103 ', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562614055', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabo lightning blackberry pt ds103', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562614048', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabo lightning br blackberry cb105', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562619326', '39.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabo lightning preto blackberry cb105', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562619319', '44.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabo type c br blackberry', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562619654', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabo type c br blackberry', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562619647', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabo type c pt blackberry', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562619630', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabos usb pt ds102 blackberry', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562614000', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cabos usb vm ds102 blackberry', 'Unidade', 'Cabo', 'Blackberry', 'Fornecedor LTDA', '7898562614024', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Caixa de som cube blackberry sp103', 'Unidade', 'Caixa de som', 'Blackberry', 'Fornecedor LTDA', '7898939560480', '35.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Carregador de tomada usb br bivolt blackberry', 'Unidade', 'Carregador', 'Blackberry', 'Fornecedor LTDA', '7898562610019', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Carregador de tomada usb pt bivolt blackberry', 'Unidade', 'Carregador', 'Blackberry', 'Fornecedor LTDA', '7898595422390', '16.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Cooler easy blackberry co301 ', 'Unidade', 'Cooler', 'Blackberry', 'Fornecedor LTDA', '7898939560817', '41.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Fone de ouvido candy az fc203 blackberry', 'Unidade', 'Fone de ouvido', 'Blackberry', 'Fornecedor LTDA', '7898562615793', '9.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Fone de ouvido candy cz fc203 blackberry ', 'Unidade', 'Fone de ouvido', 'Blackberry', 'Fornecedor LTDA', '7898562615786', '9.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Fone de ouvido candy pt fc203 blackberry', 'Unidade', 'Fone de ouvido', 'Blackberry', 'Fornecedor LTDA', '7898562615762', '9.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Fone de ouvido candy vm fc203 blackberry', 'Unidade', 'Fone de ouvido', 'Blackberry', 'Fornecedor LTDA', '7898562615779', '9.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Fone easy fc 205 blackberry', 'Unidade', 'Fone de ouvido', 'Blackberry', 'Fornecedor LTDA', '7894515646456', '12.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Fone easy fc 205 blackberry', 'Unidade', 'Fone de ouvido', 'Blackberry', 'Fornecedor LTDA', '7898587271967', '12.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Headset extreme pr hs108 blackberry', 'Unidade', 'Headset', 'Blackberry', 'Fornecedor LTDA', '7898562610552', '67.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Headset essence br hs117 blackberry', 'Unidade', 'Headset', 'Blackberry', 'Fornecedor LTDA', '7898562617315', '175.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Headset high tone blackberry hs-302', 'Unidade', 'Headset', 'Blackberry', 'Fornecedor LTDA', '7898939560725', '17.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Headset high tone blackberry hs-302', 'Unidade', 'Headset', 'Blackberry', 'Fornecedor LTDA', '7894156154564', '17.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Mouse fit usb blackberry mo304c', 'Unidade', 'Mouses', 'Blackberry', 'Fornecedor LTDA', '7898587271912', '15.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Mouse sem fio freedom mo201nl blackberry', 'Unidade', 'Mouses', 'Blackberry', 'Fornecedor LTDA', '7898939560756', '57.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Mouse sem fio pocket 1200dpi blackberry', 'Unidade', 'Mouses', 'Blackberry', 'Fornecedor LTDA', '7898562615236', '49.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Mouse sem fio pocket 1200dpi blackberry', 'Unidade', 'Mouses', 'Blackberry', 'Fornecedor LTDA', '7898562615243', '49.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Teclado blackberry combo sem fio advanced ck102', 'Unidade', 'Teclados', 'Blackberry', 'Fornecedor LTDA', '7898939560657', '96.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Teclado blackberry combo sem fio advanced ck111', 'Unidade', 'Teclados', 'Blackberry', 'Fornecedor LTDA', '7895639560657', '94.90');
INSERT INTO tb_produto (nome_produto, un_venda, categoria, marca, fornecedor, cod_barras, valor_venda) VALUES ('Teclado blackberry combo com fio advanced ck145', 'Unidade', 'Teclados', 'Blackberry', 'Fornecedor LTDA', '7898789560657', '92.90');


SELECT * FROM tb_produto;
