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
);  
CREATE TABLE voto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    qtd_dramas INT,
    qtd_ep INT,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

select * from usuario;
select * from voto;

select count(qtd_dramas) QtddeDramas, count(qtd_ep) QtdeEp  from voto group by fk_usuario ;

select Nome, count(qtd_dramas) as QtdDramas, count(qtd_ep) as QtdEpisódios 
	from voto join usuario 
		on fk_usuario = usuario.id group by fk_usuario;

-- ESTAS TABELAS AINDA NÃO FORAM USADAS -- 

/*
CREATE TABLE voto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    qtd_drama INT,
    qtd_ep INT,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario)
        REFERENCES usuario (id)
);


CREATE TABLE aviso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    qtd_dramas VARCHAR(100),
    qtd_ep VARCHAR(150),
    fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuario (id)
);
*/

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
    Nome, Email, MD5(Senha)
FROM
    usuario

    

