create database BancoDsw;
use BancoDsw;

create table usuario (
idUsuario int primary key not null auto_increment,
nome varchar(250),
email varchar(250),
senha varchar(250)
);
