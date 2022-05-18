/**
agenda de contatos
@author guifrans
*/

-- verificar banco de dados
show databases;

-- Criar um novo banco de dados 
create database teste;
create database guifrans;

-- excluir um banco de dados 
drop database teste;

-- Seleciona o banco de dados 
use guifrans;

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


create table contatos(
id int primary key auto_increment,
nome varchar(255) not null,
fone varchar(255) not null,
email varchar(255)
);

-- verificar tabelas do banco
show tables;

-- descrver a tabela 
describe contatos;

-- adicionando uma coluna(campo) a tabela
alter table contatos add column obs varchar(255);
-- adicionando uma coluna(campo) a tabela
alter table contatos add column fone2 varchar(255);

-- adicionando uma coluna(campo) a tabela após um campo 
alter table contatos add column cel varchar(255) after fone;

-- modificando uma propriedade de uma tabela 
alter table contatos modify column cel varchar(255) not null;

-- excluir uma coluna (campo) da tabela 
alter table contatos drop column fone2;

-- excluir a tabela 
drop table contatos;
