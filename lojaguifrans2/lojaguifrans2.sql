/*
lojinha
@author guifrans
@version 1.0
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
