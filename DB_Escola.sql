create  database db_escola;
use db_escola;

create table aluno(
	id_aluno int not null auto_increment ,
    nome varchar(45),
    idade date,
    turma varchar(45),
    nota double(10,2),
    primary key (id_aluno)
); 

select * from aluno;

select * from aluno
where  nota > 7;

select * from aluno
where nota < 7;

update  db_escola
set nota = 8
where id_aluno=2
limit 1;

