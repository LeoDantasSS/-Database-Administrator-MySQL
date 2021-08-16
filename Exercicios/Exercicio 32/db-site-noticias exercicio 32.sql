-- Cria Banco de Dados 'db_site_noticia'
CREATE DATABASE IF NOT EXISTS db_site_noticias;

-- Usa Banco de Dados 'db_site_noticia
USE db_site_noticias;
  
-- Cria tabela 'tb_usuarios'
  CREATE TABLE IF NOT EXISTS tb_usuarios (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  nome_usuario VARCHAR(255) NOT NULL,
  email_usuario VARCHAR(255) NOT NULL,
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


  