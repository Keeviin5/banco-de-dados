-- CRUD (Create Read Update Delete)
use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- O código abaixo cria uma tabela
create table tb_usuarios(
iduser int primary key,
usuariio varchar (50)not null,
login varchar (50) not null unique,
senha varchar(20)not null,
perfil varchar(50)not null,
fone varchar(15)
);
show tables;
-- descrevendo a tabela
describe tb_usuarios;
-- inserindo dados na tabela (DER - Create)
insert into tb_usuarios values
(1,'Kevin Souza Cosenza','kevin.s','coxinha123','aluno do senac','1111-1111');
insert into tb_usuarios values
(2,'Matheus Silva','matheus.s','coxinha123','aluno do senac','2222-2222');
insert into tb_usuarios values
(3,'Marcos Vinicius','marcos.v','coxinha123','aluno do senac','3333-3333');
select *from tb_usuarios;








