use dbinfox;
create table tb_os(
idos int auto_increment primary key,
tipo2 varchar (15) not null,
situaçao varchar (20) not null,
equipamento varchar(200) not null,
defeito varchar(200)not null,
servico varchar (200),
tecnico varchar(200),
valor varchar(10.2)
);
alter table tb_os auto_increment = 10000;
alter table tb_os add dataos timestamp default current_timestamp
after idos;
describe tb_os;

alter table tb_os add idcli int not null;

-- Criando Equipamentos 

insert into tb_os(tipo2,situaçao,equipamento,defeito,servico,tecnico,valor,idcli)
values('Serviço','Aprovado','Computador Gamer','Windows Com Defeito','Formatar','Matheus',150,1);
select * from tb_os;

insert into tb_os(tipo2,situaçao,equipamento,defeito,servico,tecnico,valor,idcli)
values('Manutençao','Não Aprovado','Notebook Apple','Queimo Teclado','Trocar Teclado','Kevin',700,2);

insert into tb_os(tipo2,situaçao,equipamento,defeito,servico,tecnico,valor,idcli)
values('Manutenção','Aprovado','Computador Hp','Memória ram Queimada','Trocar Memoria Ram','Marcos',350,3);

select * from tb_os;

-- relacionando as tabelas


alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_cliente(idcli)
on delete no action;


describe tb_os;

select * from tb_os; 


describe tb_os;

select * from tb_cliente;
select 
idos,tipo2,situaçao,equipamento,defeito,servico,tecnico,valor from tb_os;

-- criando relatórios personalinados
select
O.idos as OS,tipo2,situaçao,equipamento,defeito,servico,tecnico,valor,
C.nomecli as Nome, fone1 as Fone, emailcli as Email
from tb_os as O
inner join tb_cliente as C on (O.idcli = C.idcli);








drop table tb_os;













