create table tb_frase_motivadora (
id int auto_increment,
frase varchar(200) not null,
primary key (id)
);

insert into tb_frase_motivadora(frase)
values('Comece onde você está, use o que você tem e faça o que você pode. Arthur Ashe'),
('Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.Roberto Shinyashiki'),
('Devíamos ser ensinados a não esperar por inspiração para começar algo. Ação sempre gera inspiração. Inspiração raramente gera ação.Frank Tibolt'),
('As conquistas dependem de 50% de inspiração, criatividade e sonhos, e 50% de disciplina, trabalho árduo e determinação. São duas pernas que devem caminhar juntas.Augusto Cury'), 
('Se deseja voar como as águias, não se rodeie de galinhas.');

select * from tb_frase_motivadora;
