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

select * from usuario;

CREATE TABLE aviso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao VARCHAR(150),
    fk_usuario INT,
    FOREIGN KEY (fk_usuario)
        REFERENCES usuario (id)
);
select * from aviso;

CREATE TABLE voto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo INT,
    titulo2 INT,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario)
        REFERENCES usuario (id)
); 
select * from voto;

select Nome, count(titulo) as 'Qtd de Votos' from voto join usuario on fk_usuario = usuario.id group by fk_usuario; -- Qtd de votos por usuário

-- ESTÁ TABELA AINDA NÃO FOI USADA -- 

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

SELECT 
    Email, MD5(Senha)
FROM
    usuario

    

