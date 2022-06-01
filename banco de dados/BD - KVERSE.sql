-- DROP DATABASE kverse;
-- DROP TABLE usuario;

CREATE DATABASE kverse;
USE kverse;

CREATE TABLE votacao (
idVotacao int, 
tipoGenero VARCHAR(45)
);
CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45),
    Cel CHAR(15),
    Email VARCHAR(45),
    Senha VARBINARY(100),
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

INSERT INTO votacao (tipoGenero) VALUES 
('Romance'),
('Ação'),
('Comédia');

INSERT INTO usuario (Nome, Cel, Email, Senha) VALUES 
();

ALTER TABLE votacao ADD FOREIGN KEY (fkUsuario) REFERENCES usuario (id);

UPDATE votacao SET fkUsuario = 1 WHERE  idVotacao = 1;
UPDATE votacao SET fkUsuario = 2 WHERE  idVotacao = 2;
UPDATE votacao SET fkUsuario = 3 WHERE  idVotacao = 3;

SELECT 
    Email, md5(Senha)
FROM
    usuario;
    
    SELECT Email, cast(aes_encrypt(senha, 'chavesegura')) FROM usuario;
    

