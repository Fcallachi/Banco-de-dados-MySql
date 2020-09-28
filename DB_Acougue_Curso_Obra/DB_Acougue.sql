create database db_cidade_das_carnes;
use db_cidade_das_carnes;
drop database db_cidade_das_carnes;
#---------------------------------------------------
create table tb_categoria(
id_categoria int not null auto_increment, 
estado enum('congelado','fresco'),
quantidade enum('solto','pacote'),
primary key (id_categoria)
);

insert into tb_categoria
(id_categoria,estado,quantidade)
values
(null,'congelado','pacote'),
(null,'fresco','pacote'),
(null,'congelado','solto'),
(null,'fresco','solto'),
(null,'fresco','pacote');

select *from tb_categoria;
#-------------------------------------------------------
create table tb_produto(
id_produto int not null auto_increment,
nome varchar(40),
tipo varchar(10),
validade varchar(10),
preco varchar(10),
id_categoria int,
primary key (id_produto),
constraint fk_chave foreign key(id_categoria) references  tb_categoria(id_categoria)
);

insert into tb_produto
(id_produto, nome,tipo,validade,preco)
values
(null,'seara','ave','17/04','11'),
(null,'friboi','bovino','07/11','50'),
(null,'elrey','bovino','05/06','60'),
(null,'aurora','ave','15/04','90'),
(null,'sadia','bovino','27/03','95'),
(null,'sadia','ave','24/07','25'),
(null,'seara','bovino','31/09','30'),
(null,'elrey','suino','28/09','31');


select *from tb_produto;
#-----------------------------------------------------

select * from tb_produto where preco >50;
select * from tb_produto where preco >3 and preco< 60;
select * from tb_produto where nome like '%c';

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.id_produto;

select * from tb_categoria where estado='congelado';
