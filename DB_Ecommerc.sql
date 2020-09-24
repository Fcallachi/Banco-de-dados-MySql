create  database db_ecommerc;
use db_ecommerc;

create table produto(
	id_produto int not null auto_increment ,
    marca varchar(45),
    validade date,
    setor varchar(45),
    preco double(10,2),
    primary key (id_produto)
); 

select * from produto;

select * from protudo
where preco > 500;

select * from produto
where preco < 500;

update  db_ecommerc
set preco = 2500
where id_produto=3
limit 1;


