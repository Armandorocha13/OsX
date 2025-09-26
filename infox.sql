-- a linha abaixo cria um banco de dados --

create database dbinfox;

use dbinfox;

-- criando as tabelas -- 

create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar (15),
login varchar(15) not null unique,
senha varchar(15) not null
);


-- descrevendo a tabela 

describe tbusuarios;

-- inserindo dados na tabela (CRUD) - creat -> insert
insert into tbusuarios(iduser,usuario,fone,senha,login)
values (1, 'Jose de assis', '9999-9999', '123456', 'joseassis');

insert into tbusuarios(iduser,usuario,fone,senha,login)
values (2, 'Administrador', '9999-9999', 'admin', 'admin');

insert into tbusuarios(iduser,usuario,fone,senha,login)
values (3, 'Bill', '9999-9999', '123456', 'Bgates');


-- exibindo os dados (crud) - read -> select

select * from tbusuarios;


-- modificando os dados na tabela (CRUD) - update

update tbusuarios set fone= '0000-0000' where iduser = 2;

-- deletando na tabela (CRUD) - delete

delete from tbusuarios where iduser=3;


create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar (50) not null,
endcli varchar (50),
fonecli varchar (50) not null,
emailcli varchar (50)
);

describe tbclientes;


insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values ('Linus torvalds', 'Rua torta, 001', '9999-6665', 'lunus@gmail.com');


select * from tbclientes;

use dbinfox;
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar (150) not null,
defeito varchar (150) not null, 
servico varchar (150),
tecnico varchar (30),
valor decimal(10,2),
idcli int not null,
foreign key (idcli) references tbclientes (idcli)
);

describe tbos;


insert into tbos (equipamento, defeito, servico, tecnico, valor, idcli)
values ('notebook', 'nao liga', 'troca da fonte', 'ze', 87.57, 1);

select * from tbos;

-- O codigo abaixo traz info de duas tabelas (relacionamentos)


select
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);