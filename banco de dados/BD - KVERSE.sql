-- DROP DATABASE kverse;
-- DROP TABLE usuario;

CREATE DATABASE kverse;
USE kverse;

CREATE TABLE votacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Romance INT,
    Acao INT,
    Comedia INT
);

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45),
    Cel CHAR(15),
    Email VARCHAR(45),
    Senha CHAR(20),
	fk_votacao INT,
    FOREIGN KEY (fk_votacao) REFERENCES votacao (id)
)  AUTO_INCREMENT=10;

CREATE TABLE aviso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao VARCHAR(150),
    fk_usuario INT,
    FOREIGN KEY (fk_usuario)
        REFERENCES usuario (id)
);

SELECT 
    *
FROM
    usuario;
