create table tb_frase_motivadora (
	id int auto_increment,
    frase varchar(200) not null,
    primary key (id)
);

insert into tb_frase_motivadora(frase)
values('Mais firme que prego na areia'),('Firme e forte que nem maria mole')
,('Frase de caminhoneiro: Me aperta na subida que acertamos na descida'),
('Cão com mais de um dono morre de fome'), ('Não adiante só ser, tem que aparecer');

select * from tb_frase_motivadora;
