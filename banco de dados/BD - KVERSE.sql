-- DROP DATABASE kverse;
-- DROP TABLE usuario;

CREATE DATABASE kverse;
USE kverse;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45),
    Cel CHAR(15),
    Email VARCHAR(45),
    Senha CHAR(20)
);  
CREATE TABLE voto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    qtd_dramas INT,
    qtd_ep INT,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

SELECT * FROM usuario;
SELECT * FROM voto;

SELECT 
    Nome,
    AVG(qtd_dramas) QtddeDramas,
    AVG(qtd_ep) QtdeEp
FROM
    voto
        JOIN
    usuario ON fk_usuario = usuario.id
GROUP BY Nome;

SELECT 
    Nome, Email, MD5(Senha)
FROM
    usuario;
