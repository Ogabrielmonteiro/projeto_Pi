create database bancada;
use bancada;
create table cadastro (
	id int primary key auto_increment,
	nome varchar(80) not null,
    email varchar(80) unique not null,
    senha varchar(20) not null,
    data_nas date not null
);

insert into cadastro values
(null,"Gabriel Monteiro","gabriel.monteiro@bandtec.com.br","euamocozinha","2001-06-09"),
(null,"Gabriel Lemos","gabriel.lemos@bandtec.com.br","tocomfome","2000-02-25"),
(null,"Gabriel Nicodemos","gabriel.nicodemos@bandtec.com.br","tudopassa","1998-07-12"),
(null,"Gabriel Ortelan","gabriel.ortelan@bandtec.com.br","xandaoheroi","1999-06-10"),
(null,"Gabriela Foschini","gabriel.foschini@bandtec.com.br","numsei","2001-06-29");

create table fruta (
	id_fruta int primary key auto_increment,
    nome_fruta varchar (40) not null,
	categoria int not null
);

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

create table sensores (
	id_sensor int primary key auto_increment,
    temperatura decimal(3,1) not null,
    tempo datetime not null
);

insert into sensores values
(null,"5.2","2020-09-16 10:54:05"),
(null,"5.2","2020-09-16 10:53:05"),
(null,"5.3","2020-09-16 10:52:05"),
(null,"5.3","2020-09-16 10:51:05"),
(null,"5.4","2020-09-16 10:50:05"),
(null,"5.5","2020-09-16 10:49:05"),
(null,"5.5","2020-09-16 10:48:05");