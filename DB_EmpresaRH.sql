create  database db_empresaRH;
use db_empresaRH;

create table funcionario(
	id_funcionario int not null auto_increment ,
    nome varchar(45),
    nascimento date,
    cargo varchar(45),
    salario double(10,2),
    primary key (id_funcionario)
); 

select * from funcionario;

select * from funcionario
where salario > 2000.00;

select * from funcionario
where salario < 2000.00;

update  db_empresaRH
set salario = 2500
where id_funcionario=1
limit 1;