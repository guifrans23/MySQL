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
-- varcha(255) --> tipo de dados string(com variação) naõ tem especificação em suas variaveis
-- cha(255)tipo de string (sem variação) uf por exemplo que utiliza caracter limitados e especificos
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

/*--------------------------------------------------------------CRUD------------------------------------------------------------------------*/


-- Inserir um registro na tabela
-- tipo  varchar ou char usar aspas simples
insert into contatos(nome,fone,email)
value ('guifrans','95101-4339', 'guifrans23@gmail.com');

insert into contatos(nome,fone)
value ('bill gades','9999-3333');

insert into contatos(fone,email)
value('99999-9999','jose@gamil.com');

-- meus registros 

insert into contatos(nome,fone,email)
value ('cazujm','935678-3533', 'cazujm@gmail.com');

insert into contatos(nome,fone,email)
value ('andreza','92334-3425', 'deda_guizinho23@gmail.com');

insert into contatos(nome,fone,email)
value ('dudinhafrans','9152-4339', 'dudinhafrans@gmail.com');

insert into contatos(nome,fone,email)
value ('edwvaldo','95101-4339', 'edwaldo@gmail.com');

insert into contatos(nome,fone,email)
value ('cleuza','92344-5432', 'mcleuza@gmail.com');

insert into contatos(nome,fone,email)
value ('kerry','9345-9080', 'kerry@gmail.com');

insert into contatos(nome,fone,email)
value ('vramonde','96666-vraamonde', 'vraamonde@gmail.com');



-- crud read
-- seção de todos registros da tabela contatos
select*from contatos;
-- selecão de um registro (constatos) específico
select * from contatos where id=20;
select * from contatos where nome='guifrans';
select * from contatos where nome= like 'n%';

-- selecionar campo especifico
select nome,fone from contatos;
select nome,fone,email from contatos order by nome;
select nome,fone,email from contatos order by nome desc;

-- criação de bons apelidos dos compos
select nome as contatos,fone as telefone, email as gmail
from contatos order by nome;



--  crud update (atualizar usuario)
update contatos set email='bill@outlook'where id='8';
update contatos set nome='josé'where id='8';
update contatos set nome='robson da silva',fone='92222-2222',email='vaamonde@gamail.com'where id=30;

-- crud delete(usuario)

delete from contatos where id=18;