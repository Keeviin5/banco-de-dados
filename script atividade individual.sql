drop table tb_usuarios;

use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o codigo abaixo cria uma login ao usuario
 
create table tb_cliente(
idcli int auto_increment primary key,
cpfcli varchar(20) unique,
nomecli varchar(30) not null,
cep varchar(20) not null,
tipo varchar(50) not null,
logradouro varchar(20) not null,
numero varchar(20) not null,
complemento varchar(10),
bairro varchar(30) not null,
cidade varchar(30) not null,
uf char(2) not null,
fone1 varchar(30) not null,
fone2 varchar(30),
emailcli varchar(30) not null);

show tables;
-- descrevendo a tabela

describe tb_cliente;
-- inserindo usuarios

insert into tb_cliente values
(null,'123.456.789-0','Kevin Souza','03666-030','Rua',
'Rua Paricatuba','5','casa 8','Vila Ré','São Paulo',
'SP','4639-2783','95283-9337','kevin@gmail.com');
select *from tb_cliente;

insert into tb_cliente values
(null,'222.222.222-0','Matheus Muniz','03666-040','Rua',
'Rua Itapevi','5','casa 9','Vila Sonia','São Paulo',
'SP','4738-3783','96383-9337','matheus@gmail.com');

insert into tb_cliente values
(null,'505.326.958-0','Alex Yudy','03656-050','Rua',
'Rua Almirante','15','casa 20','Patriarca','São Paulo',
'SP','5669-3773','96282-1337','alex@gmail.com');

insert into tb_cliente values
(null,'605.226.758-0','Marcos Vinicius','03776-040','Rua',
'Rua do sal','25','casa 10','Vila do som','São Paulo',
'SP','5368-3673','97387-1637','marcos@gmail.com');

insert into tb_cliente values
(null,'705.956.768-0','Isabela Muniz','04666-350','Rua',
'Rua do sol','16','casa 4','Vila da nevoa','São Paulo',
'SP','4679-4763','96371-1337','isabela@gmail.com');

select *from tb_cliente;

drop table tb_cliente;




