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

-- criação da tabela  fornecedores
 
 create table fornecedores(
idfor int primary key auto_increment,
cnpj varchar(255)not null unique,
ie varchar(255)unique,
im varchar(255)unique,
razao varchar(255) not null , 
fantasia varchar(255)not null,
site varchar(255),
fone varchar(255) not null,
contato varchar(255),
email varchar(255),   
cep varchar(255) not null,
endereco varchar(255) not null,
numero varchar(255)not null,
complemento varchar(255), 
bairro varchar(255)not null,
cidade varchar(255) not null,
uf char(2)not null,
obs varchar(255)
 );
 insert into fornecedores(cnpj,ie,im,razao,fantasia,fone,cep,endereco,numero,bairro,cidade,uf)
value ('47.51-2-01','São Paulo','Sp','fornecer games','Uzgames',' (11) 2941-8100',03306-010,
'Shopping Metrô Tatuapé','91 - 185', 'tatuape','São Paulo','sp');
select* from fornecedores;
 describe fornecedores;
 drop table fornecedores;


-- tabela de  produtos 

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
venda decimal(10,2),
idfor int not null,
foreign key (idfor) references fornecedores(idfor)
);
insert into produtos (produto,descricao,fabricante)
value ('GTA5','jogo gta GTA5','Uzgames');
insert into produtos (produto,descricao,fabricante)
value ('FiFa','Jogo De Futebol','Uzgames');
drop table produtos;
describe produtos;

insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1234567890','playstation4','console playstion-4','sony',20240523,2000,1000,'UN','prateleira 2',2550.75,1000,1.50);
--
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1234907843','xbox 360','console xbox360-microsoft','microsoft',29052022,500,100,'UN','prateleira 9',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1234657757','nitendo 3Ds','console nitendo 3Ds-Nitendo','Nitendo',29052022,500,100,'UN','prateleira 10',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1543153451','playstation vita ','console playstation vita -playstation','playstation',29052022,500,100,'UN','prateleira 8',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('2474224577','','console nitendo swith -nitendo','nitendo',29052022,500,100,'UN','prateleira 8',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('2134425116','gift card playstation','cartão presente playstation','sony',29052022,500,100,'UN','prateleira 3',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1341521523','gift card xbox gamepass','cartão presente xbox gamepass','microsoft',29052022,500,100,'UN','prateleira 4',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('0875656565','gift card xbox','cartão presente xbox pass ultimate','micrisoft',29052022,500,100,'UN','prateleira 5',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('3468753599','gift card xbox','cartão presente xbox live gold','microsoft',29052022,500,100,'UN','prateleira 6',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1344561545','gift card steam','cartão presente stema','steam',29052022,500,100,'UN','prateleira 7',2550.75,1000,1.50);
insert into produtos(barcode,produto,descricao,fabricante,dataval,estoque,estoquemin,unidade,localizacao,custo,lucro,venda)
value
('1243667517','gift card epic games','cartão presente epic game','epic games',29052022,500,100,'UN','prateleira 8',2550.75,1000,1.50);

-- relatorio de reposição de estoque 1
select* from produtos where estoque < estoquemin;

-- relatorio de reposição de estoque 2
-- date format() função usada para formatar a data
-- '%d/%m/%y dd/mm/aaaa | '%d/%m/%y dd/yy/aa
 select codigo as codigo,produto,
 date_format(dataval,'%d/%m/%y') as data_validade,
 estoque,estoquemin as estoque_minimo
 from produtos where estoque < estoquemin;



-- inventario do etoque (patrimonio)
-- calculacula o (patrimonio)
select sum(estoque*custo) as total from produtos;

-- ("SUM") função de soma no banco de dados

select*from produtos;

-- relatório de vaildade  de produtos 1 
 select codigo as codigo,produto,
 date_format(dataval,'%d/%m/%y') as data_validade
 from produtos;
 
-- relatório de vaildade  de produtos 2
-- datediff() calcular a diferenca em dias 
-- curdate()obtem a data atual  
select codigo as codigo,produto,
 date_format(dataval,'%d/%m/%y') as data_validade,
 datediff(dataval,curdate()) as  dias_restatntes
 from produtos;
 
 create table clientes(
 idcli int primary key auto_increment,
 nome varchar(255) not null,
 fone varchar(255) not null,
 cpf varchar(255) unique,
 email varchar(255),
 marketing varchar(255) not null,
 cep varchar(255),
 endereco varchar(255),
 numero varchar(255),
 complemento varchar(255),
 bairro varchar(255),
 cidade varchar(255),
 uf char(2)
 );
 
 describe clientes;
 
 -- desafio 
 alter table clientes add column nacimento varchar(255) after nome;
 alter table produtos modify column barcode varchar(255) unique;
 
 insert into contatos(nome,fone,cpf,email, marketing,cep,endereco,numero,complemento,bairro,cidade,uf)
value ('nome','fone',cpf,'email','marketing',cep,endereco,numero,complemento,bairro,cidade,uf);

select * from clientes;
insert into clientes (nome,fone,marketing)
value ('guifrans','95101-4339','nao');
insert into clientes (nome,fone,marketing)
value ('emanoel','92345-3462','sim');

-- tabela de pedidos 01/06/2022

-- foreign key(FK)Chave estrangeira que cria o relacionamento
-- do tipo 1-N com a tabela clientes
-- FK(pedido)..............PK(clientes)
-- Observação: usar o mesmo nome e tipo de dados nas chaves(PK e FK)
create table pedidos(
pedido int primary key auto_increment,
dataped timestamp default current_timestamp,
total decimal(10,2),
idcli int not null,
foreign key(idcli) references clientes(idcli)
);


--  Abertura de pedido
insert into pedidos(idcli)value(1);
insert into pedidos(idcli)value(2);
 -- verificar pedidos
 select*from pedidos where pedidos;
 -- verificar pedidos junto com o nome do cliente
 -- inner join (unir informações de 2 ou mais tabelas)
 -- IMPORTANTE Indicar As Chaves FK e Nk
 select* from pedidos inner join clientes
 on pedidos.idcli = clientes.idcli;
 
 -- verificar pedidos junto com o nome do cliente (Relatorio Simplificado)
 -- %H:%i exibir tambem o horario formatado 
 select 
 pedidos.pedido,
 date_format(pedidos.dataped, '%d/%m/%y -%h:%i') as data_ped,
 clientes.nome as cliente,
 clientes.fone
 from pedidos inner join clientes
 on pedidos.idcli = clientes.idcli;
 
 
