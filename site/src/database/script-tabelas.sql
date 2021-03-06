/* Criação de Cadastro, Aviso, Voto */

-- DROP DATABASE kverse;
-- DROP TABLE usuario;

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

SELECT * FROM usuario;
SELECT * FROM voto;

SELECT 
    Nome,
    COUNT(qtd_dramas) AS QtdDramas,
    COUNT(qtd_ep) AS QtdEpisódios
FROM
    voto
        JOIN
    usuario ON fk_usuario = usuario.id
GROUP BY fk_usuario;

SELECT 
    AVG(qtd_dramas) QtddeDramas, AVG(qtd_ep) QtdeEp
FROM
    voto
GROUP BY fk_usuario;

SELECT Nome, Email, MD5(Senha) FROM usuario;

/* ------------------------------------------------------------------------------------------------------------------------- */

/* para sql server - remoto - produção */
CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT FOREIGN KEY REFERENCES aquario(id)
);
