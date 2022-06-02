-- DROP DATABASE kverse;
-- DROP TABLE usuario;

CREATE DATABASE kverse;
USE kverse;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45),
    Cel CHAR(15),
    Email VARCHAR(45),
    Senha VARBINARY(100)
)  AUTO_INCREMENT=10;

CREATE TABLE aviso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao VARCHAR(150),
    fk_usuario INT,
    FOREIGN KEY (fk_usuario)
        REFERENCES usuario (id)
);

DROP TABLE 	voto;

CREATE TABLE voto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo INT,
    titulo2 INT,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario)
        REFERENCES usuario (id)
);

CREATE TABLE usuarionota ( -- ESTÁ TABELA É ASSOCIATIVA, OU SEJA TEM A FK DE DUAS OUTRAS TABELA E É PRIMARY KEY
    fk_usuario INT,
    FOREIGN KEY (fk_usuario)
        REFERENCES usuario (id),
    fk_nota INT,
    FOREIGN KEY (fk_nota)
        REFERENCES nota (id),
	PRIMARY KEY (fk_usuario, fk_nota),
    descricao VARCHAR(300),
    momento DATETIME
);

SELECT * FROM usuario;
SELECT * FROM aviso;
SELECT * FROM voto;

INSERT INTO usuario (Nome, Cel, Email, Senha) VALUES 
('Sophie Silva', '11 98553-8023', 'sophie.s@gmail.com', '123');

INSERT INTO voto (titulo, fk_usuario, fk_nota, momento) VALUES 
(5, 10, 1, '2022-05-04 10:00:00');

-- Ainda não está sendo usado --
SELECT 
    Email, MD5(Senha)
FROM
    usuario

    

