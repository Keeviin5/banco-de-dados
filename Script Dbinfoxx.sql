use dbinfox;

create table tb_clientee(
idcli int primary key,
cpfcli varchar (20) unique,
nomecli varchar (50) not null,
cep varchar (20) not null,
tipo varchar(20) not null,
logradouro varchar(20)not null,
numero varchar (10) not null,
complemento varchar(10),
bairro varchar(20)not null,
cidade varchar (20) not null,
uf varchar(10) not null,
fone1 varchar(20)not null,
fone2 varchar (20),
emailcli varchar (50)not null);
show tables;
insert into tb_clientee values
(1,'132.685.789-0','Kevin','98765-432','rua','rua paricatuba','5','','Vila Ré','sao paulo','sp','03666030','','kevinsouza@yahoo.com');
describe tables tb_clientee;
select *from tb_clientee;


