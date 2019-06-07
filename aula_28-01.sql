use aula1401;

# funções de datas
SELECT 
    CURRENT_TIMESTAMP() as data_hora_servidor,
    NOW() data_hora_Servidor_2,
    CURRENT_DATE() `data servidor`,
    CURDATE() as `data servidor 2`,
    CURRENT_TIME() hora_servidor,
    CURTIME() as hora_servidor_2;
    
# formatando data
SELECT 
    DATE_FORMAT(CURRENT_TIMESTAMP(), '%e %M'),
    NOW(),
    CURRENT_DATE(),
    CURDATE(),
    CURRENT_TIME(),
    CURTIME();    
    
# função para formatar string em date
SELECT 
    STR_TO_DATE('25-01-2008 13:25:59',
            '%d-%m-%Y %H:%i:%s') AS data_hora,
    STR_TO_DATE('13:25:59', '%H:%i:%s') somente_hora,
    STR_TO_DATE('25-01-2008', '%d-%m-%Y') `somente data`;


create table tb_unique (
cpf varchar(11) unique not null 
);

select * from tb_unique_test;

ALTER TABLE table_name
  RENAME TO new_table_name;

alter table tb_unique
change COLUMN cpf ds_cpf varchar(11);

alter table tb_unique 
modify column ds_cpf varchar(12);

create table tb_unique (
 cpf varchar(11) unique not null ,
 tp_status int default 1,
 dt_inclusao datetime default NOW()
);

drop table tb_unique;

create table tb_pai (
  id int auto_increment,
  nome varchar(100) not null,
  primary key(id)
);

insert into tb_pai (nome) values ('Pai 1');
insert into tb_pai (nome) values ('Pai 2');
insert into tb_pai (nome) values ('Pai 3');

select * from tb_pai;

create table tb_filho (
  id int auto_increment,
  id_pai int,
  nome varchar(100) not null,
  primary key(id),
  constraint fk_tb_pai_id foreign key(id_pai) references tb_pai(id)
);

insert into tb_filho (id_pai, nome) values (1, 'Filho 1');
insert into tb_filho (id_pai, nome) values (2, 'Filho 1');
insert into tb_filho (id_pai, nome) values (2, 'Filho 2');
insert into tb_filho (nome) values ('Filho 1');


select * from tb_pai;
select * from tb_filho;

# inner join do pai para o filho
SELECT 
    pai.id AS id_pai,
    pai.nome AS nome_pai,
    filho.id AS id_filho,
    filho.nome AS nome_filho
FROM
    tb_pai pai
        INNER JOIN
    tb_filho filho ON pai.id = filho.id_pai;

# inner join do filho para o pai    
SELECT 
    pai.id as id_pai, pai.nome as nome_pai, filho.id as id_filho, filho.nome as nome_filho
FROM
    tb_filho filho
        INNER JOIN
    tb_pai pai ON filho.id_pai = pai.id;
    
# left join
SELECT 
    pai.id as id_pai, pai.nome as nome_pai, filho.id as id_filho, filho.nome as nome_filho
FROM
    tb_pai pai
        LEFT JOIN
    tb_filho filho ON pai.id = filho.id_pai;
    
# right join
SELECT 
    pai.id as id_pai, pai.nome as nome_pai, filho.id as id_filho, filho.nome as nome_filho
FROM
    tb_pai pai
        RIGHT JOIN
    tb_filho filho ON pai.id = filho.id_pai;    

select * from tb_cliente;

create view vw_cliente as
select nome, cpf from tb_cliente;

select * from vw_cliente;


# testando union all
select 'banana', 'maça'
union all
select 'banana', 'maça'
union all
select 'arroz', 'feijão';

# testando union
select 'banana', 'maça', ''
union
select 'banana', 'maça', ''
union
select 'arroz', 'feijão', null;






alter table tb_unique
add column tp_status int default 1;

alter table tb_unique
add column dt_inclusao datetime default NOW();

alter table tb_unique 
add constraint ck_cpf_vazio check(cpf <> '1') ;


insert into tb_unique(cpf,tp_status, dt_inclusao) values ('4', 0, STR_TO_DATE('25-01-2008 13:25:59',
            '%d-%m-%Y %H:%i:%s'));
insert into tb_unique(cpf,tp_status) values ('5', 0);      
insert into tb_unique(cpf) values ('6');             

select * from tb_unique;
select * from tb_unique where cpf is null;
select * from tb_unique where cpf = '';


create table tb_produto (
id_produto int primary key,
nome varchar(1000)
);

create table tb_itens (
id_item int,
id_produto int,
qtd int,
constraint pk_tb_itens primary key (id_item)
);

alter table tb_itens
add constraint fk_tb_produto foreign key(id_produto) references produto(id_produto);
