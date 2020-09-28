create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
drop database db_cursoDaMinhaVida;
#---------------------------------------------------
create table tb_categoria(
id_categoria int not null auto_increment, 
tipo enum('tecnico','bacharel'),
ensino enum('EAD','Pessoalmente'),
primary key (id_categoria)
);

insert into tb_categoria
(id_categoria,tipo,ensino)
values
(null,'tecnico','Pessoalmente'),
(null,'tecnico','Pessoalmente'),
(null,'bacharel','EAD'),
(null,'bacharel','EAD'),
(null,'tecnico','Pessoalmente');

select *from tb_categoria;
#-------------------------------------------------------
create table tb_curso(
id_curso int not null auto_increment,
nome varchar(40),
turma varchar(10),
duracao varchar(10),
mensalidade varchar(10),
id_categoria int,
primary key (id_curso),
constraint fk_chave foreign key(id_categoria) references  tb_categoria(id_categoria)
);

insert into tb_curso
(id_curso,nome,turma,duracao,mensalidade)
values
(null,'Java','A','3 MESES','50'),
(null,'Analise e desenvolvimento','B','2 ANOS','1000'),
(null,'C#','C','1 ano','500'),
(null,'logica','A2','1 ano','350'),
(null,'Banco de dados','B2','3 meses','500'),
(null,'Spring','C2','2 anos','900'),
(null,'Java','A','3 meses','50'),
(null,'PHP','B','6 meses','100');



select *from tb_curso;
#-----------------------------------------------------

select * from tb_curso where mensalidade >50;
select * from tb_curso where mensalidade >3 and mensalidade< 60;
select * from tb_curso where nome like 'j%';

SELECT * FROM tb_categoria
INNER JOIN tb_curso
ON tb_categoria.id_categoria = tb_curso.id_curso;

select * from tb_curso where nome = 'java';
