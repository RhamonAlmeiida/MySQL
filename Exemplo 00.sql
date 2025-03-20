-- Apagar o vbanco de dados 'sistema_proway' se existir esse banco de dados
DROP DATABASE IF EXISTS sistema_proway;
-- Criar o banco de dados
CREATE DATABASE sistema_proway;

-- Definir o banco de dados que iremos utilizar
USE sistema_proway;

-- Consultar todos os bancos de dados dessa conexão
SHOW SCHEMAS;

-- Criar uma tabela chamada curso
CREATE TABLE curso(
   id INT, -- Coluna do tipo inteiro
   nome VARCHAR(45) -- Coluna do tipo texto que permite armazenar até 45 caracteres
);

-- Consultar os registros da tabela curso
SELECT id, nome FROM curso;

-- Consultar o que a tabela tem
DESCRIBE curso;

-- Null é utilizado para dizer que a coluna permite valor null
-- Not null é utilizado para dizer que a coluna não permite valor null
-- Coluna not null ela é obeigatória, ou seja, vc terá que informar valor no INSERT

-- Alterar o nome da tabela de curso para cursos
ALTER TABLE curso RENAME TO cursos;
-- Consultar os registros da tabela de cursos
SELECT id, nome FROM cursos;

-- Inserir um registro na tabela de cursos preenchendo as colunas de id e nome
INSERT INTO cursos (id, nome) VALUE (1, "Orlando");

-- Consultar os registros
-- SELECT coluna FROM nome_tabela
SELECT id, nome FROM cursos;

-- Inserir dois registros na tabela de cursos
INSERT INTO cursos(id, nome) VALUE (2, "Python Fundamentos");
INSERT INTO cursos(id, nome) VALUE (3, "MySql");


-- Atualizar na tabela de cursos o nome 'orlando' para 'HTML Fundamentos'
UPDATE  cursos SET nome = 'CSS Fundamentos'
-- Consultar os registros da tabela de cursos
SELECT id, nome FROM cursos;



