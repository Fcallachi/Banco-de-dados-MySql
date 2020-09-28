create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
drop database db_construindo_a_nossa_vida;
#---------------------------------------------------
create table tb_categoria(
id_categoria int not null auto_increment, 
tipo enum('hidraulica','obra','eletrica','acabamento'),
entrega enum('Prazo','Pessoalmente'),
primary key (id_categoria)
);

insert into tb_categoria
(id_categoria,tipo,entrega)
values
(null,'hidraulica','Pessoalmente'),
(null,'obra','Pessoalmente'),
(null,'eletrica','Prazo'),
(null,'acabamento','Prazo'),
(null,'acabamento','Pessoalmente');

select *from tb_categoria;
#-------------------------------------------------------
create table tb_produto(
id_produto int not null auto_increment,
marca varchar(40),
descricao varchar(45),
quantidade varchar(10),
preco varchar(10),
id_categoria int,
primary key (id_produto),
constraint fk_chave foreign key(id_categoria) references  tb_categoria(id_categoria)
);

insert into tb_produto
(id_produto,marca,descricao,quantidade,preco)
values
(null,'Yabiku','tinta','1','60'),
(null,'c&c','bloco','32','64'),
(null,'Telha norte','lixa','10','20'),
(null,'Yabiku','massa','1','21'),
(null,'Telha norte','fita','3','45'),
(null,'c&c','tinta','2','61'),
(null,'Yabiku','bloco','3','15'),
(null,'c&c','madeira','2','70');


select *from tb_produto;
#-----------------------------------------------------

select * from tb_produto where preco >50;
select * from tb_produto where preco >3 and preco< 60;
select * from tb_produto where marca like '%c';

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id_categoria = tb_produto.id_produto;

select * from tb_categoria where tipo = 'hidraulica';
