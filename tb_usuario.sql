create database `loja_virtual`;
use `loja_virtual`;

create table tb_usuario (
	id int auto_increment,
    nome varchar(100) not null,
    email varchar(255) not null,
    senha varchar(12) not null,
    primary key tb_usuario_id_pk (id)
);

alter table tb_usuario
modify senha varchar(32) not null;

truncate table tb_usuario;

insert into tb_usuario (nome, email, senha)
values ('Administrador', 'adm@senac.com.br', md5('123'));

select * from tb_usuario;