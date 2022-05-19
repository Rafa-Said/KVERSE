Create database fanclube;
use fanclube;

create table cadastro (
idCadastro int primary key auto_increment,
Nome varchar (45),
DtNascimento date,
Email varchar(45),
Senha char(20)
)auto_increment = 10;

create table login (
fkcadastro int,
foreign key (fkcadastro) references cadastro (idcadastro),
idLogin int,
primary key (fkcadastro, idLogin),
Senha char(20)
);

create table votacao (
idVotacao int primary key auto_increment,
voto1 int,
voto2 int,
voto3 int
);