-- Cria Banco de Dados 'db_site_noticia'
CREATE DATABASE IF NOT EXISTS db_site_noticias;

-- Usa Banco de Dados 'db_site_noticia
USE db_site_noticias;
  
-- Cria tabela 'tb_usuarios'
  CREATE TABLE IF NOT EXISTS tb_usuarios (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  nome_usuario VARCHAR(255) NOT NULL,
  email_usuario VARCHAR(255) NOT NULL UNIQUE,
  senha_usuario VARCHAR(255) NOT NULL,
  tipo_usuario INT NOT NULL,
  status_usuario INT NOT NULL,
  PRIMARY KEY (id_usuario)
  );

-- Cria tabela 'tb_categorias'
CREATE TABLE IF NOT EXISTS tb_categorias (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_categoria)
  );

-- Cria tabe de 'Noticias
  CREATE TABLE IF NOT EXISTS tb_noticias (
  id_noticias INT NOT NULL AUTO_INCREMENT,
  titulo_noticias VARCHAR(255) NOT NULL,
  data_noticias DATE NOT NULL,
  texto_noticia TEXT NOT NULL,
  imagem_noticia VARCHAR(255) NULL,
  id_categoria INT NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id_noticias),
  CONSTRAINT FK_tb_noticias_tb_categorias FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria),
  CONSTRAINT FK_tb_noticias_tb_usuarios FOREIGN KEY (id_usuario) REFERENCES tb_usuarios (id_usuario)
  );
 
 -- Cria tabela 'tb_imagem'
  CREATE TABLE IF NOT EXISTS tb_imagem (
  id_imagem INT NOT NULL AUTO_INCREMENT,
  imagem VARCHAR(255) NOT NULL,
  id_categoria INT NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id_imagem),
  CONSTRAINT FK_tb_imagem_tb_categorias FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria),
  CONSTRAINT FK_tb_imagem_tb_usuarios FOREIGN KEY (id_usuario) REFERENCES tb_usuarios (id_usuario)
  );
  
  -- Cria tabela 'tb)comentarios'
  CREATE TABLE IF NOT EXISTS tb_comentarios (
  id_comentario INT NOT NULL AUTO_INCREMENT,
  data_comentario DATE NOT NULL,
  texto_comentario TEXT NOT NULL,
  id_noticias INT NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id_comentario),
  CONSTRAINT FK_tb_comentarios_tb_noticias FOREIGN KEY (id_noticias) REFERENCES tb_noticias (id_noticias),
  CONSTRAINT FK_tb_comentarios_tb_usuarios FOREIGN KEY (id_usuario) REFERENCES tb_usuarios (id_usuario)
  );
  
  -- Insere elementos na tabela 'tb_categorias'
  INSERT INTO tb_categorias (nome_categoria) VALUES ('Esporte');
  INSERT INTO tb_categorias (nome_categoria) VALUES ('Entreteriemento');
  INSERT INTO tb_categorias (nome_categoria) VALUES ('Finanças');
  INSERT INTO tb_categorias (nome_categoria) VALUES ('Politica');
  INSERT INTO tb_categorias (nome_categoria) VALUES ('Tecnologia');
  
  -- Lista os intens cadastrados da tabaela 'tb_categorias'
  SELECT * FROM tb_categorias;
  
  -- Insere elementos na tabela 'tb_usuarios'
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('Leandro', 'leandro@gmail.com', 'leandro123', '1', '0');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('Mateus', 'mateus@gmail.com', 'mateus123', '1', '0');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('João', 'joao@gmail.com', 'joao123', '0', '1');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('Flavio', 'flavio@gmail.com', 'flavio123', '1', '0');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('Enio', 'enio@gmail.com', 'enio123', '0', '1');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('Jonas', 'jonas@gmail.com', 'jonas123', '0', '1');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('Anderson', 'anderson@gmail.com', 'anderson123', '1', '0');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('David', 'dacid@gmail.com', 'david123', '1', '0');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('James', 'james@gmail.com', 'james123', '0', '1');
  INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario, tipo_usuario, status_usuario) VALUES ('Luiz', 'luiz@gmail.com', 'luiz123', '1', '0');
  
  -- Lista os intens cadastrados da tabaela 'tb_usuarios'
  SELECT * FROM tb_usuarios;
  
  -- Insere elementos na tabela 'tb_noticias'
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Qual o pior time do mundo?', '2000/06/06', 'O Íbis Sport Club é um clube de futebol da cidade de Paulista, no estado de Pernambuco. O time ficou famoso depois que ganhou o epíteto de "pior time do mundo", afinal de contas "nada pode ser pior"', 'https://upload.wikimedia.org/wikipedia/pt/2/22/ÍbisSC.png', '1', '1');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Qual foi o time campeão da copa do mundo de 2002', '2002/12/31', 'Brasil Penta Campeão Copa do Mundo 2002', 'https://www.rbsdirect.com.br/imagesrc/25637871.jpg?w=1200&h=630&a=c&version=1575255600', '1', '2');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Semana da Diversidade', '2021/06/21', 'traz mesas-redondas e performances sobre representatividade', 'https://www.dds.com.br/blog/wp-content/uploads/sites/2/2018/08/diversidade-call-center-1024x573.jpg', '2', '3');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Post Malone posa com seu novo Ford GT de R$ 5 milhões', '2021/06/21', 'Post Malone parece ter encontrado um belo substituto para seu raro McLaren Senna XP, colocado à venda meses atrás.', 'https://s2.glbimg.com/67xG4bcTMwuMzIX9SM9dlLrpqJE=/0x0:1080x570/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2021/j/A/kWqlAgQ5O0g1xferqlug/post-malone-ford-gt-1080x570.jpg', '2', '4');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Alta de juro deve atrasar recuperação, afirma BC', '2021/06/21', 'Levará mais tempo que o anteriormente previsto para preencher ociosidade1', 'https://www.remessaonline.com.br/blog/wp-content/uploads/2020/11/O-Banco-Central-do-Brasil-também-conhecido-por-BC-BACEN-ou-BCB.png', '3', '5');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('ETFs já movimentaram R$ 153 bilhões na Bolsa brasileira em 2021','2021/06/21', 'Ao todo, são hoje 40 ETFs disponíveis para negociação do investidor pessoa física na B3, sendo 33 deles de renda variável e 7 de renda fixa', 'https://www.infomoney.com.br/wp-content/uploads/2019/08/etf-1.jpg?fit=900%2C540&quality=50&strip=all', '3', '6');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Cabral é condenado pela vigésima vez, e pena ultrapassa 390 anos de prisão', '2021/06/26', 'Em nova condenação, ex-governador fluminense é acusado de corrupção passiva em um esquema com empresários da Fetranspor no Rio de Janeiro', 'https://medias.cnnbrasil.com.br/o-ex-governador-do-rio-de-janeiro-sergio-cabral.jpeg?format=WEBP&image=https://mediastorage.cnnbrasil.com.br/IMAGES/00/00/00/7355_2F27A71E8D5C10A7.jpg&width=804&height=452&resize=CROP', '4', '7');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Cármen Lúcia manda e Salles entrega passaporte à PF, ficando impedido de viajar', '2021/06/21', 'O ex-ministro do Meio Ambiente é alvo de dois inquéritos na Justiça, que tratam sobre madeira ilegal na região da Amazônia', 'https://medias.cnnbrasil.com.br/o-ministro-do-meio-ambiente-ricardo-salles.jpeg?format=WEBP&image=https://mediastorage.cnnbrasil.com.br/IMAGES/00/00/03/35826_4F2D8389E9897A3F.jpg&width=804&height=452&resize=CROP', '4', '8');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Virgin Galactic recebe autorização para decolar com turistas para o espaço', '2021/06/26', 'Empresa de voos espaciais completou voo teste com sucesso no mês passado', 'https://medias.cnnbrasil.com.br/nave-da-virgin-galactic-faz-voo-de-teste-sobre-o-deserto-da-california.jpeg?format=WEBP&image=https://mediastorage.cnnbrasil.com.br/IMAGES/00/00/04/43388_E9202E19C81B60E0.JPG&width=804&height=452&resize=CROP', '5', '9');
  INSERT INTO tb_noticias (titulo_noticias, data_noticias, texto_noticia, imagem_noticia, id_categoria, id_usuario) VALUES ('Carros dos anos 70 ainda estão na Lua, mas GM e Lockheed Martin vão enviar novos', '2021/06/18', 'Três carros usados pela Nasa nos anos 70, da última vez que o homem pisou na lua, ainda estão lá, mas ninguém vai tentar fazê-los funcionar de novo', 'https://medias.cnnbrasil.com.br/gm-e-lokcheed-martin-estao-nos-estagios-iniciais-da-criacao-de-um-carro-lunar.jpeg?format=WEBP&image=https://mediastorage.cnnbrasil.com.br/IMAGES/00/00/04/42150_C098349A238222B9.jpg&width=804&height=452&resize=CROP', '5', '10');
  
  -- Lista intens cadastrados na tabela 'tb_noticias'
  SELECT * FROM tb_noticias;
  
  -- Insere elementos na tabela 'tb_imagem'
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDC7cpHmwy5PHSuaL-kImTY4rOg-cpQcmiqQ&usqp=CAU', '5', '9');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('http://s2.glbimg.com/73Zk4oObxATvfZQtHdIH3RhgkSM=/s.glbimg.com/og/rg/f/original/2014/11/18/selecao606.jpg', '1', '2');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmiMaSmyurjFR-6aLl3eocO1UHK7OT7rVDtQ&usqp=CAU', '1', '1');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('http://s2.glbimg.com/h6zEPJheuvzBAedaj1sgn0PZews=/s.glbimg.com/og/rg/f/original/2015/03/26/amistoso_4.jpg', '1', '2');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://conteudo.cbf.com.br/cdn/thumbs/910x455/201503/20150326181939_1.jpeg', '1', '1');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://cdn.consumidormoderno.com.br/wp-content/uploads/2019/05/entretenimento-editado-.jpg', '2', '3');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://veja.abril.com.br/wp-content/uploads/2021/06/arte-gameflix.jpg?quality=70&strip=info&w=680&h=453&crop=1', '2','4');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMiut5EkqtbMSmqRSUOdMLPEK5RL1Y8l6u_9wuZGdiJJZuKYBqBvUJFcIowYjBbaEJ81s&usqp=CAU', '2','3');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5GetAz_nTd596KYrEcY6_CdxnCg5fgvp9ZBGTtXLF4A0cQ0hxfmOxtPBS78OeYi4gtF8&usqp=CAU', '2', '4');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://www.meioemensagem.com.br/wp-content/uploads/2019/05/Prosumer-Millennial-Smartphone-Music575CRED-Recep-bg-iStock.jpg', '2', '3');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://financeone.com.br/wp-content/uploads/2019/05/paper-3190198_1920-1-1-1-1024x669.jpg', '3', '5');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://imgs.jusbr.com/publications/images/8cd372102c205b26ce88b5efbca5071b', '3', '6');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://comunidade.rockcontent.com/wp-content/uploads/2019/06/Capa-para-conteúdos-de-Finanças-Pessoas-1.png', '3', '5');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/18/2019/06/Como-usar-a-tecnologia-em-seus-eventos-corporativos.jpg', '5', '10');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://pbs.twimg.com/profile_images/993479284856709121/ZQpy2w-j.jpg', '3', '5');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://img.imirante.com.br/2019/09/15/1568584771-764277121-810x471.jpg', '4', '7');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://static.todamateria.com.br/upload/oq/ue/o-que-e-politica-og.jpg', '4', '8');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://s2.glbimg.com/MViBvuhVSOIlDS26obdk2LILLE8=/e.glbimg.com/og/ed/f/original/2018/03/23/politica.jpg', '4', '7');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://lamenteesmaravillosa.com/wp-content/uploads/2019/10/politicos-en-debate-370x222.png', '4', '8');
  INSERT INTO tb_imagem (imagem, id_categoria, id_usuario) VALUES('https://www.algar.com.br/wp-content/uploads/2019/11/mercado-de-tecnologia.jpg', '5', '9');
  
  -- Lista itens da tabela 'tb_imagem'
  SELECT * FROM tb_imagem;
  
  -- Insere intens na tabela 'tb_comentarios'
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/06/15', 'Bom', '1', '1');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/05/14', 'Otimo', '2', '1');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/04/13', 'Ruim', '3', '3');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/02/02', 'Good', '4', '4');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/01/02', 'Okey', '5', '5');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/03/03', 'Bom', '5', '2');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/04/22', 'Ruim', '2', '2');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/06/02', 'Bom', '5', '10');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/05/03', 'Otimo', '5', '9');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/06/02', 'Bom', '5', '9');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/05/22', 'Ruim', '4', '6');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/04/03', 'Bom', '5', '10');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/03/03', 'Novidade', '3', '7');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/03/09', 'Pois e', '3', '3');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/06/12', 'Brasil', '1', '1');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/02/22', 'O melhor', '1', '2');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/08/23', 'Brasil e muito bom', '1', '2');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/01/20', 'Elon Musk', '5', '10');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/01/31', 'Voa', '1', '2');
  INSERT INTO tb_comentarios (data_comentario, texto_comentario, id_noticias, id_usuario) VALUES ('2021/06/06', 'Bom de mais', '5', '10');
  
  -- Lista itens da tabela 'tb_comentarios
  SELECT * FROM tb_comentarios;