create database db_chaves;
use db_chaves;

create table Pessoas(
	ID_Pessoa integer primary key auto_increment,
	Nome varchar(255)
);
create table Carro(
	ID_Carro integer primary key auto_increment,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa integer,
    constraint fk_Pessoas foreign key(ID_Pessoa) references Pessoas(ID_Pessoa)
);

insert into Pessoas (Nome) values ('Juliana'),('Julio'),('Marcio');

select * from Pessoas;

insert into Carro (Nome,Marca,ID_Pessoa) values 
			('Gol','Wolks',2), ('Palio','Fiat',3);
select * from Carro;

truncate Pessoas;
#erro proposital com o objetivo de entender melhor o relacionamento da tabela com a chave. 
