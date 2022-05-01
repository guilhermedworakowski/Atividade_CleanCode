create table Alunos(
	idAluno serial primary key,
	nome varchar(50) not null,
	dtNasc date not null,
	mediaTrabAluno int
);
create table Trabalhos(
	idTrabalho serial primary key,
	dtLanca date not null,
	dtEntrega date not null, 
	descrTrabalho text,
	mediaPTrabAlunos int
);
create table AlunosTrabalhos(
	fk_Alunos_idAluno integer references Alunos(idAluno),
	fk_Trabalhos_idTrabalho integer references Trabalhos(idTrabalho),
	primary key(fk_Alunos_idAluno, fk_Trabalhos_idTrabalho),
	notaTrabAluno int
);

/* Para testarmos o funcionamento das tabelas criadas, podemos rodar os comandos abaixo, inserindo dados nas respectivas tabelas e apresentando os mesmos. */

insert into Alunos (nome, dtNasc, mediaTrabAluno) values ('Guilherme Domingues', '1999-08-04', 8);

select * from Alunos;

insert into Trabalhos (dtLanca, dtEntrega, descrTrabalho, mediaPTrabAlunos) values ('2022-04-22', '2022-04-23', 'Criação de três tabelas dentro do banco EX1_Trabalhos', 7);

select * from Trabalhos;

insert into AlunosTrabalhos (fk_Alunos_idAluno, fk_Trabalhos_idTrabalho, notaTrabAluno) values (1, 1, 8);

select * from AlunosTrabalhos;
