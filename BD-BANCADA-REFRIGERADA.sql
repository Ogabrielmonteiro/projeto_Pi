-- Criar banco de dados
Create database bd_bancada;

-- Usar o banco "bd_bancada"
use bd_bancada;

-- Criar tabela cadastro --
create table cadastro (
	id_cpf int primary key,
	nome varchar(80) not null,
    email varchar(80) unique not null,
    senha varchar(20) not null,
    data_nas date not null
);

-- Inserir dados na tabela cadastro
insert into cadastro values
("5164","gabriel monteiro","gabriel@gmail.com","euamocozinha","2001-06-09");

-- Exibir tabela cadastro
select * from cadastro;
-- Excluir tabela cadastro
drop table cadastro;



-- Criar tabela login --
create table login (
	cpf int primary key,
    email varchar(80) not null,
    senha varchar(20) not null,
    pk_cpf int not null,
    foreign key (pk_cpf) references cadastro (pk_cpf)
);

-- Exibir tabela login
select * from login;

-- Excluir tabela login
drop table login;

-- Inserir dados da tabela login
insert into login values
("5164","gabriel monteiro","gabriel@gmail.com","euamocozinha","2001-06-09");



-- Criar tabela frutas --
create table fruta (
	id_fruta int primary key auto_increment,
    nome_fruta varchar (40) not null,
	categoria int not null
);

-- Inserir dados na tabela fruta
insert into fruta values

(null,"pera",1),
(null,"maçâ",1),
(null,"pêssego",1),
(null,"laranja",2),
(null,"mexirica",2),
(null,"vagem",2),
(null,"banana",3),
(null,"mamão",3),
(null,"limão",3);

-- Excluir tabela	
drop table fruta;

-- Exibir tabela fruta
select * from fruta;

-- Exibir categoria 3 de frutas
select * from fruta where categoria = 3;

-- Exibir categoria da fruta banana
select categoria from fruta where nome_fruta = "banana";



-- Criar tabela temperatura para o grafico
create table temp_grafico (
	id_sensor int primary key auto_increment,
    temperatura varchar(10) not null ,
    tempo time not null,
	DT date not null  
);

select * from temp_grafico;

drop table temp_grafico;

insert into temp_grafico value 
(null,"5,30","10:54:00","2020-09-15"),
(null,"5,32","10:54:01","2020-09-15"),
(null,"5,31","10:54:02","2020-09-15"),
(null,"5,35","10:54:03","2020-09-15"),
(null,"5,28","10:54:04","2020-09-15"),
(null,"5,29","10:54:05","2020-09-15");

insert into temp_grafico value 
(null,"5,20","10:54:00","2020-09-16"),
(null,"5,25","10:54:01","2020-09-16"),
(null,"5,30","10:54:02","2020-09-16"),
(null,"5,28","10:54:03","2020-09-16"),
(null,"5,31","10:54:04","2020-09-16"),
(null,"5,27","10:54:05","2020-09-16");

select temperatura from temp_grafico where DT = "2020-09-16";



