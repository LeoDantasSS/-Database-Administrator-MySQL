CREATE DATABASE db_cadastro;

USE db_cadastro;

CREATE TABLE tb_pessoa (
	id_pessoa INT(3) AUTO_INCREMENT,
    nome VARCHAR(32) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    email VARCHAR(50),
    escolaridade VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_pessoa)
);

INSERT INTO tb_pessoa (nome, sobrenome, cpf, email, escolaridade) VALUES ('Mary', 'Jack', '58146813062', 'Mary@gmail.com', 'Graduação'),
	('Helen', 'Jacks', '62978344075', 'Helen@gmail.com', 'Pós-graduação'),
    ('Dorothy', 'Jackson', '23086844027', 'Dorothy@gmail.com', 'Mestrado'),
    ('Margaret', 'Jacob', '37777625047', 'Margaret@gmail.com', 'Doutorado'),
    ('Ruth', 'Jacobs', '43594815018', 'Ruth@gmail.com', 'Cursos técnicos'),
    ('Mildred','Rader', '66406964012', 'Mildred@gmail.com', 'Ensino fundamental'),
    ('Anna', 'Radford', '30548145080', 'Anna@gmail.com', 'Ensino médio'),
    ('Elizabeth', 'Rafferty', '47078171063', 'Elizabeth@gmail.com', 'Graduação'),
    ('Frances', 'Ragan', '96705665092', 'Frances@gmail.com', 'Pós-graduação'),
    ('Virginia', 'Ragland', '59582543086', 'Virginia@gmail.com', 'Mestrado'),
    ('Marie', 'Waddell', '31076016081', 'Marie@gmail.com', 'Doutorado'),
    ('Evelyn', 'Wade', '29696281048', 'Evelyn@gmail.com', 'Cursos técnicos'),
    ('Alice', 'Wadsworth', '58246957085', 'Alice@gmail.com', 'Ensino fundamental'),
    ('Florence', 'Waggoner', '43259892006', 'Florence@gmail.com', 'Ensino médio'),
    ('Lillian', 'Wagner', '55057619098', 'Lillian@gmail.com', 'Graduação'),
    ('Rose', 'Elizondo', '88017732007', 'Rose@gmail.com', 'Pós-graduação'),
    ('Irene', '73019524067', '73019524067', 'Irene@gmail.com', 'Mestrado'),
    ('Louise', 'Eller', '61777094003', 'Louise@gmail.com', 'Doutorado'),
    ('Edna', 'Ellington', '94921195013', 'Edna@gmail.com', 'Cursos técnicos'),
    ('Catherine', 'Elliot', '97780304051', 'Catherine@gmail.com', 'Ensino fundamental'),
    ('Gladys', 'Brant', '81372223088', 'Gladys@gmail.com', 'Ensino médio'),
    ('Ethel', 'Brantley', '15053363099', 'Ethel@gmail.com', 'Graduação'),
    ('Josephine', 'Braswell', '66262378022', 'Josephine@gmail.com', 'Pós-graduação'),
    ('Ruby', 'Bratcher', '43704805076', 'Ruby@gmail.com', 'Mestrado'),
    ('Martha', 'Bratton', '62866792009', 'Martha@gmail.com', 'Doutorado'),
    ('Grace', 'Kent', '39038179022', 'Grace@gmail.com', 'Cursos técnicos'),
    ('Hazel', 'Kenyon', '35552416058', 'Hazel@gmail.com', 'Ensino fundamental'),
    ('Thelma', 'Kern', '83248587091', 'Thelma@gmail.com', 'Ensino médio'),
    ('Lucille', 'Kerns', '73583960017', 'Lucille@gmail.com', 'Pós-graduação'),
    ('Edith', 'Kerr', '52220468003', 'Edith@gmail.com', 'Mestrado');
    
		