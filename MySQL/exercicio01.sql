CREATE DATABASE exercicio01;

USE exercicio01;
drop database if exists exercicio01;
CREATE TABLE professores(
	id INTEGER,
    nome VARCHAR(60)
);

SHOW schemas;
SELECT id, nome, cpf, salario, data_admissao, disciplinas from professores;
DESCRIBE professores;

insert into professores (id, nome) values (1, 'Ana Beatriz Santos');
insert into professores (id, nome) values (2, 'Ricardo Gomes');

ALTER TABLE professores ADD COLUMN cpf VARCHAR(14);

update professores set cpf = '987.654.321-00' where id = 1;
update professores set cpf = '123.321.123-99' where id = 2;

ALTER TABLE professores ADD COLUMN salario DOUBLE;

update professores set salario = '4500.75' where id = 1;
update professores set salario = '5200.50' where id = 2;

ALTER TABLE professores ADD COLUMN data_admissao DATE;

update professores set data_admissao = '2015-08-15' where id = 1;
update professores set data_admissao = '2018-03-01' where id = 2;

ALTER TABLE professores ADD COLUMN disciplinas VARCHAR(50);

update professores set disciplinas = 'Matemática' where id = 1;
update professores set disciplinas = 'História' where id = 2;

insert into professores (id, nome, cpf, salario, data_admissao, disciplinas) values (3, 'Fernando Oliveira', '321.654.987-11', '6100.00', '2020-01-10', 'Física'); 
insert into professores (id, nome, cpf, salario, data_admissao, disciplinas) values (4, 'Maria Riberiro', '159.753.486-22', '5800.25', '2019-05-20', 'Química');

select * from professores;  -- Consultar todos os registros da tabela professores

select nome, data_admissao from professores where id = 3; -- Consultar o ano de admissão de um professor

select nome, month(data_admissao) from professores where id = 4;  -- Consultar o mês de admissão de um professor

select nome, day(data_admissao) from professores where id = 1;  -- Consultar o dia de admissão de um professor

select avg(salario) AS média from professores; -- Consultar a média dos salários dos professores

select nome from professores order by nome  asc;  -- Ordenar os registros por nome em ordem crescente

select nome from professores order by nome desc;  -- Ordenar os registros por nome em ordem decrescente

select count(nome) as quantidade from professores;  -- Consultar a quantidade de registros na tabela professores

select min(salario) as menor from professores;  -- Consultar o menor salário entre os professores

select max(salario) from professores;  -- Consultar o maior salário entre os professores

select sum(salario) from professores;  -- Consultar a soma dos salários de todos os professores

select avg(salario) as média from professores;  -- Consultar a média dos salários dos professores

select * from professores;

alter table professores add column cpf varchar(14);

update  professores set cpf = '123.123.123-90' where id = 1;  -- Atualizar o cpf de um professor (ex: para o professor com id = 1)

update professores set salario = '9500.10' where id = 3;  -- Atualizar o salário de um professor (ex: para o professor com id = 1)

update professores set data_admissao = '2025-05-05' where id = 2;  -- Atualizar a data de admissão de um professor (ex: para o professor com id = 1)


