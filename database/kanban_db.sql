CREATE DATABASE concord_db_tironi;
USE  concord_db_tironi;

CREATE table usuarios(
id_usuario INT auto_increment PRIMARY KEY,
nome varchar(45) NOT NULL,
email varchar(45) NOT NULL,
senha varchar(45) NOT NULL,
amizades float NOT NULL
);

CREATE table servidor(
id_servidor INT AUTO_INCREMENT PRIMARY KEY,
id_usuario INT NOT NULL,
nome_servidor varchar(45) NOT NULL,
convite varchar(45) NOT NULL,
data_entrada date NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE
);