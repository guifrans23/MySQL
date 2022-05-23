/*
lojinha
@author guifrans
@version 1.1
*/
show databases;
create database lojaguifrans2;

use lojaguifrans2;

create table produtos(
id int primary key auto_increment,
nome varchar(255) not null,
quantidade varchar(255) not null,
valor varchar(255)
);
show tables;
describe produtos;
/*inicio do crud*/

insert into produtos(nome,quantidade,valor)
value('fifa','150',250);
insert into produtos(nome,quantidade,valor)
value('fnaf','50',120);
insert into produtos(nome,quantidade,valor)
value('hellow','150',70);
insert into produtos(nome,quantidade,valor)
value('minecraft','241',150);
insert into produtos(nome,quantidade,valor)
value('godofwar','300',250);
insert into produtos(nome,quantidade,valor)
value('gta5','311',250);
insert into produtos(nome,quantidade,valor)
value('callofdutty','124',365);
insert into produtos(nome,quantidade,valor)
value('Sonic','56',365);

select * from produtos;
-- selecão de um registro (constatos) específico
select * from produtos where id=20;
select * from produtos where nome='fifa';


select nome,quantidade from produtos;
select nome,quantidade,valor from produtos order by nome;
select nome,quantidade,valor from produtos order by nome desc;

select  nome as Nome ,quantidade as Quantidade ,valor as Valor
from produtos order by produtos;

update produtos set nome='',quantidade='',valor='' where id=30;

delete from produtos where id=2;

-- 
create table usuarios(
idus int primary key auto_increment,
usuario varchar(255)not null,
login varchar (255) not null unique,/* valor unico*/
senha varchar (255) not null,
perfil varchar (255) not null
);

describe usuarios;

-- para inserir uma senha criptpografada usamos md5()

insert into usuarios(usuario,login,senha,perfil)
value('Administrador',"admin",md5('admin'),'admin');

insert into usuarios(usuario,login,senha,perfil)
value('guifrans','guifrans',md5('12345'),'user');

select*from usuarios;
select* from usuarios where login='admin' and senha=md5('admin');

create table produtos(
codigo int primary key auto_increment,
barcode varchar(255),
produto varchar(255)not null,
descricao varchar(255)not null,
fabricante varchar(255)not null,
datacad timestamp default current_timestamp,
dataval date not null,
estoque int not null,
estoquemin int not null,
unidade varchar(255) not null,
localizacao varchar(255),
custo decimal(10,2),
lucro decimal(10,2),
venda decimal(10,2)
);
drop table produtos;
describe produtos;

insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1234567890','playstation4','console playstion-4','sony',20240523,2000,1000,'UN','prateleira 2',2550.75,1000,1.50);

select*from produtos;

