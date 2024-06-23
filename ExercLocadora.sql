CREATE TABLE ATOR (
	cod_ator SERIAL  primary key,
	nome varchar (60) NOT NULL
);

DROP TABLE ATOR
SELECT * FROM ATOR

INSERT INTO ATOR (nome) values ('Millie Bobby Brown'), ('Brad Pitt'),
('Daniel Radcliffe'), ('Anne Hathaway');	

create table genero (
	cod_gen serial primary key,
	nome varchar(60) NOT NULL
)

	INSERT INTO genero (nome) values ('Drama'), ('Comédia Romântica'),
	('Terror'), ('Ficção Científica');
   INSERT INTO genero (nome) values ('Ação');

	SELECT * FROM GENERO
	DROP TABLE GENERO

create table categoria (
	cod_cat serial primary key,
	nome varchar (60) NOT NULL,
	valor money 
)	
	INSERT INTO CATEGORIA (nome, valor) values  ('Infantil', 15.00), 
		('Público', 14.00),
		('Adulto', 13.00);	

   
	SELECT * FROM CATEGORIA
	DROP TABLE CATEGORIA


create table filmes (
	cod_filme serial primary key,
	titulo_original varchar (100) not null,
	titulo varchar (100),
	quantidade integer,
	fk_cod_cat integer, 
	fk_cod_gen integer, 
	foreign key (fk_cod_cat) references categoria(cod_cat),
	foreign key (fk_cod_gen) references genero(cod_gen)
);

INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Titanic', 'Titanic 1', 3, 2, 1);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Matrix', 'Matrix 1', 2, 2, 4);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Jurassic Park', 'Jurassic Park 1',1, 2, 4);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Senhor dos Aneis', 'Senhor dos Anei 1', 5, 2, 1);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Barbie', 'Barbie 1', 4, 1, 1);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Harry Potter', 'Harry Potter 1', 2, 2, 4);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Bad boys', 'Bad boys 1', 5, 2, 5);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('O Chamado', 'O Chamado 1', 1, 2, 3);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Divertidamente', 'Divertidamente 1', 3, 1, 4);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Minha mãe é uma peça', 'Minha mãe é uma peça 1', 5, 2, 2);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Elektra', 'Elektra 1', 3, 2, 5);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Demolidor', 'Demolidor 1', 4, 2, 1);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Pica pau', 'Pica pau 1', 3, 1, 4);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Todos menos você', 'Todos menos você 1', 1, 2, 2);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Marley e eu', 'Marley e eu 1', 2, 2, 1);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Missão impossivel', 'Missão impossivel 1', 6, 3, 5);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Missão impossivel 2', 'Missão impossivel 02', 8, 2, 5);
INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
	values ('Missão impossivel 3', 'Missão impossivel 03', 7, 2, 5);



select * from filmes
	drop table filmes


create table filme_ator(
	cod_ator integer,
	cod_filme integer,
	ator char (1),
	diretor char (1),
	primary key (cod_ator, cod_filme),
	foreign key (cod_ator) references ator (cod_ator),
	foreign key (cod_filme) references filmes (cod_filme)
	
)

INSERT INTO filme_ator (cod_ator, cod_filme, ator, diretor)
 values (1, 1, 'S', 'N');
INSERT INTO filme_ator (cod_ator, cod_filme, ator, diretor)
 values (2, 1, 'S', 'N');
INSERT INTO filme_ator (cod_ator, cod_filme, ator, diretor)
 values (3, 2, 'S', 'N');
INSERT INTO filme_ator (cod_ator, cod_filme, ator, diretor)
 values (4, 3, 'S', 'N');
	
	
SELECT * FROM filme_ator
	drop table filme_ator


create table profissao(
	cod_prof serial not null primary key,
	nome varchar (60) not null
)

INSERT INTO profissao(nome)values ('médico'),('advogado'), ('professor'),
	('eletricista');

select * from profissao
	drop table profissao


create table cliente (
	cod_cli serial primary key,
	cpf varchar (11) not null,
	nome varchar (60) not null,
	telefone varchar (10) not null,
	fk_cod_cli integer,
	foreign key (fk_cod_cli) references profissao (cod_prof)
);

INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('13028193002', 'Rafael', '8100001111', 1);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('14028193001', 'Lucas', '8100002222', 2);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('15028193003', 'Gabriel', '8100003333', 3);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('16028193004', 'Lucia', '8100005555', 4);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('17028193005', 'Maria', '8100004444', 1);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('15528193001', 'Luana', '8100007777', 2);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('20028193002', 'Bruno', '8100008888', 4);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('18028193002', 'Luiza', '8100009999', 2);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('11028193002', 'Mayara', '8100006666', 3);
INSERT INTO cliente (cpf, nome, telefone, fk_cod_cli) 
	values ('15628193002', 'Tiago', '8122051111', 4);


drop table cliente
select * from cliente
ALTER TABLE CLIENTE RENAME COLUMN fk_cod_cli TO fk_cod_prof	


create table endereco (
	cod_end serial primary key,
	logradouro varchar (40) not null,
	tipo_log varchar (40) not null,
	complemento varchar (20) not null,
	cidade varchar (60) not null,
	uf varchar (2) not null,
	cep varchar (8) not null,
	numero varchar (10) not null,
	bairro varchar (60) not null
)

INSERT INTO endereco (logradouro, tipo_log, complemento, cidade, uf,
	cep, numero, bairro) 
	values  
('Rua 1', 'Rua', 'Apto 101', 'São Paulo', 'SP', '1234-567', '123', 'bairro 1'),
 ('Avenida 2', 'Avenida', 'Casa', 'Rio de Janeiro', 'RJ', '22345678', '456', 'bairro 2'),
 ('Rua 3', 'Avenida', 'sobrado', 'Belo horizonte', 'BH', '90123456', '789', 'bairro 3');
	
drop table endereco
select * from endereco

	
create table cli_endereco (
	fk_cod_end integer not null,
	fk_cod_cli integer not null,
	primary key (fk_cod_end,fk_cod_cli),
	foreign key (fk_cod_end) references endereco(cod_end),
	foreign key (fk_cod_cli) references cliente(cod_cli)
)

	INSERT INTO cli_endereco (fk_cod_end, fk_cod_cli) values (1, 2);
    INSERT INTO cli_endereco (fk_cod_end, fk_cod_cli) values (3, 5);
    INSERT INTO cli_endereco (fk_cod_end, fk_cod_cli) values (2, 6);
    INSERT INTO cli_endereco (fk_cod_end, fk_cod_cli) values (2, 1);
    INSERT INTO cli_endereco (fk_cod_end, fk_cod_cli) values (3, 4);

	
	drop table cli_endereco
	select * from cli_endereco

create table dependente (
	fk_cod_cli integer not null,
	fk_cod_dep integer not null,
	primary key (fk_cod_cli,fk_cod_dep),
	foreign key (fk_cod_cli) references cliente(cod_cli),
	foreign key (fk_cod_dep) references cliente(cod_cli),
	parentesco varchar (20)
	
)
 insert into dependente (fk_cod_cli, fk_cod_dep, parentesco) values (1, 2, 'mãe');
insert into dependente (fk_cod_cli, fk_cod_dep, parentesco) values (2, 3, 'irmão');
insert into dependente (fk_cod_cli, fk_cod_dep, parentesco) values (6, 3, 'primo');
		
	select * from dependente
	drop table dependente

create table locacao (
	cod_loc serial primary key,
	data_loc date,
	desconto money,
	multa money,
	sub_total money,
	fk_cod_loc integer not null,
	foreign key (fk_cod_loc) references cliente (cod_cli)
	
)
		select * from  locacao
     	drop table locacao
		ALTER TABLE locacao rename column fk_cod_loc to fk_cod_cli

		
 INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-06-18', 2, 1, 3, 1);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2023-07-15', 3, 2, 3, 5);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-03-10', 4, 3, 4, 2);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-02-11', 5, 4, 1, 7);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2023-12-01', 5, 5, 6, 8);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-04-20', 9, 6, 7, 4);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2023-07-07', 4, 7, 4, 2);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2023-08-03', 1, 8, 1, 4);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2023-09-10', 1, 9, 2, 3);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-05-17', 6, 1, 7, 1);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2023-12-06', 7, 2, 3, 8);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2023-12-10', 8, 3, 2, 1);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-02-03', 5, 4, 1, 10);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-03-05', 3, 5, 4, 2);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-04-09', 4, 6, 4, 3);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-01-18', 8, 7, 1, 8);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-01-20', 2, 1, 2, 7);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-06-19', 3, 2, 6, 4);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-03-25', 1, 3, 8, 2);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_loc) values
		('2024-02-27', 2, 1, 3, 1);
INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_cli) values
		('2024-02-28', 2, 1, 3, 1);

	select * from locacao
	drop table locacao

create table locacao_filme (
	fk_cod_loc integer not null,
	fk_cod_filme integer not null,
	primary key (fk_cod_loc,fk_cod_filme),
	foreign key (fk_cod_loc) references locacao(cod_loc),
	foreign key (fk_cod_filme) references filmes (cod_filme),
	valor money,
	num_dias integer,
	data_devol date
)

insert into locacao_filme (fk_cod_loc, fk_cod_filme, valor, num_dias, data_devol)
		values (2, 2, 2, 1, '2024-06-22');
insert into locacao_filme (fk_cod_loc, fk_cod_filme, valor, num_dias, data_devol)
		values (4, 2, 2, 2, '2024-04-11');
insert into locacao_filme (fk_cod_loc, fk_cod_filme, valor, num_dias, data_devol)
		values (5, 1, 1, 1, '2024-04-13');
insert into locacao_filme (fk_cod_loc, fk_cod_filme, valor, num_dias, data_devol)
		values (6, 1, 1, 1, '2024-04-13');

INSERT INTO locacao_filme (fk_cod_loc, fk_cod_filme, valor, num_dias, data_devol) 
VALUES (3, 1, 14, 1, '2024-08-13');


select * from locacao_filme
drop table locacao_filme

--Consulta 01
SELECT cliente.nome, filmes.titulo AS titulo_filme, locacao_filme.data_devol AS data_devolucao, locacao.data_loc AS data_locacao
FROM locacao
INNER JOIN locacao_filme ON locacao.cod_loc = locacao_filme.fk_cod_loc
INNER JOIN filmes ON locacao_filme.fk_cod_filme = filmes.cod_filme
INNER JOIN cliente ON locacao.fk_cod_cli = cliente.cod_cli
WHERE cliente.nome = 'Rafael';

--Consulta 02
select cliente.nome as Cliente,dependente.fk_cod_dep as Dependente, dependente.parentesco as Parentesco
	from cliente, dependente

--Consulta 03

select * from filmes  where fk_cod_gen = 5

--Consulta 04

select * from cliente where fk_cod_prof = 2

--Consulta 05

select filmes.titulo, categoria.nome, filmes.quantidade from filmes, categoria 
	where categoria.cod_cat = 2 and quantidade > 5;

--Consulta 06

SELECT ator.nome
FROM ator
JOIN filme_ator ON ator.cod_ator = filme_ator.cod_ator
JOIN filmes ON filme_ator.cod_filme = filmes.cod_filme
WHERE filmes.titulo = 'Titanic 1';

--Consulta 07

SELECT endereco.*
FROM cliente
JOIN cli_endereco ON cliente.cod_cli = cli_endereco.fk_cod_cli
JOIN endereco ON cli_endereco.fk_cod_end = endereco.cod_end
WHERE cliente.nome = 'Lucas';

--Consulta 08
select filmes.titulo, categoria.nome, genero.nome
from filmes
join categoria on filmes.fk_cod_cat = categoria.cod_cat
join genero on filmes.fk_cod_gen = genero.cod_gen

--Consulta 09 
select cliente.nome, locacao.data_loc
from cliente
inner join locacao on cliente.cod_cli = locacao.fk_cod_cli
INNER JOIN locacao_filme ON locacao.cod_loc = locacao_filme.fk_cod_loc
INNER JOIN filmes ON locacao_filme.fk_cod_filme = filmes.cod_filme

WHERE filmes.titulo = 'Matrix 1'; 	

--Consulta 10 

select cliente.nome
from cliente
inner join locacao on cliente.cod_cli = locacao.fk_cod_cli

WHERE locacao.multa > CAST(2 AS money)

--Consulta 11

SELECT filmes.titulo AS titulo_filme, locacao.data_loc AS data_locacao
FROM locacao
INNER JOIN locacao_filme ON locacao.cod_loc = locacao_filme.fk_cod_loc
INNER JOIN filmes ON locacao_filme.fk_cod_filme = filmes.cod_filme
WHERE locacao.data_loc >= '2020-01-12' AND locacao.data_loc <= '2024-05-17'


--Consulta 12
select cliente.nome, count(*) as Quantidade_filmes
	from cliente
inner join locacao on cliente.cod_cli = locacao.fk_cod_cli
GROUP BY 
    cliente.nome
ORDER BY 
    cliente.nome;	


--Consulta 13

SELECT cliente.nome, filmes.titulo AS titulo_filme, locacao.data_loc AS data_locacao
FROM locacao
INNER JOIN locacao_filme ON locacao.cod_loc = locacao_filme.fk_cod_loc
INNER JOIN filmes ON locacao_filme.fk_cod_filme = filmes.cod_filme
INNER JOIN cliente ON locacao.fk_cod_cli = cliente.cod_cli



--Consulta 14

Select cliente.nome as Cliente, endereco.cidade as Cidade,categoria.nome as Categoria,
filmes.titulo as Filmes
from cliente
INNER JOIN cli_endereco ON cliente.cod_cli = cli_endereco.fk_cod_cli
INNER JOIN endereco ON cli_endereco.fk_cod_end = endereco.cod_end
inner join locacao on cliente.cod_cli = locacao.fk_cod_cli
INNER JOIN locacao_filme ON locacao_filme.fk_cod_loc = locacao.cod_loc
INNER JOIN filmes ON locacao_filme.fk_cod_filme = filmes.cod_filme
INNER JOIN categoria ON filmes.fk_cod_cat = categoria.cod_cat
WHERE endereco.cidade = 'Belo horizonte' AND categoria.nome = 'Público';



