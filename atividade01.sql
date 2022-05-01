/* Fazer a implementação da tabelas Alunos (idaluno, nome, data de nascimento, media dos trabalhos), alunosTrabalhos (idaluno, idtrabalho, nota do trabalho) e Trabalhos (data de lancamento, data de entrega, descrição do trabalho, idtrabalho, media trabalhos alunos) 
SOMENTE CRIAR AS TABELAS.
*/

-- Cria primeira tabela:
create table A(
	idA serial primary key,
	nome varchar(50) not null,
	dataN date not null,
	media int
);

-- Insere dados e apresenta:
insert into A (nome, dataN, media) values ('Guilherme Domingues', '1999-08-04', 8);

select * from A;

-- Cria segunda tabela:
create table T(
	idT serial primary key,
	dataUm date not null,
	dataDois date not null, 
	descr text,
	mediaTA int
);

-- Insere dados e apresenta:
insert into T (dataUm, dataDois, descr, mediaTA) values ('2022-04-22', '2022-04-23', 'Criação de três tabelas dentro do banco EX1_Trabalhos', 7);

select * from T;

-- Cria terceira tabela:
create table ATrab(
	A_idA integer references A(idA),
	T_idT integer references T(idT),
	primary key(A_idA, T_idT),
	nota int
);

-- Insere dados e apresenta:
insert into ATrab (A_idA, T_idT, nota) values (1, 1, 8);

select * from ATrab;
