/**
Projeto lojinha
@author guifrans
*/

-- verificar banco de dados 
show databases;

-- criar novo banco de dados
create database lojaguifrans;

-- excluir um banco de dados
drop database lojaguifrans;

-- selecionar banco de dados 
use lojaguifrans;

-- criando uma tabela
-- int;-> (tipos de dados - numeros inteiros)
-- Decimal(10,2)-> Tipo de dados -numero não inteiros
-- (10,2) 10 digitos com 2 casas decimais
-- Primary key (transforma o campo em chave primaria)
-- auto_increment (numero automatico)
-- a virgula no final do codigo significa que a um novo campo
-- varcha(255) --> tipo de dados string(com variação)
-- cha(255)tipo de string (sem variação)
-- (255) máximo de caracteres 
-- not null (obrigatorio preenchimento)

create table lojaguifrans(
id int primary key auto_increment,
produto varchar (255) not null,
descricao varchar(255) not null,
categoria varchar(255) not null,
preco varchar(255) not null,
msg varchar(255),
estoque varchar(255) not null
);

-- verificar tabelas do banco
show tables;

-- descrver a tabela 
describe lojaguifrans;

-- adicionando uma coluna(campo) a tabela
alter table lojaguifrans add column obs varchar(255);

-- adicionando uma coluna(campo) a tabela após um campo 
alter table lojaguifrans add column estoque2 varchar(255) after preco;

-- excluir uma coluna (campo) da tabela 
alter table lojaguifrans drop column estoque2;

-- excluir a tabela 
drop table lojaguifrans;


