create database sprint2;
use sprint2;

	create table Cliente(
		idCliente int primary key auto_increment,
		razaoSocial varchar(50),
		CNPJ char(13)
		);
    
    create table Usuario(
		idUsuario int primary key auto_increment,
		nome varchar(45),
        fkCliente int,
        foreign key (fkCliente) references Cliente(idCliente),
        login varchar(15),
        senha char(8)
        );
        
	create table Filiais(
		idFiliais int primary key auto_increment,
        fkCliente int,
        foreign key (fkCliente) references Cliente(idCliente),
        nome varchar(45)
        );
        
	create table Bancadas(
		idBancadas int primary key auto_increment,
        nome varchar(45),
        fkFiliais int,
        foreign key (fkFiliais) references Filiais(idFiliais)
        );
        
	create table Zonas(
		idZona int primary key auto_increment,
        nome varchar(15),
        fkBancada int,
        foreign key (fkBancada) references Bancadas(idBancadas)
        );
        
	create table Leitura(
		idLeitura int primary key auto_increment,
        temperatura decimal(3,1),
        DataHora datetime default current_timestamp,
        fkZona int,
        foreign key (fkZona) references Zonas(idZona)
        );
        
	
insert into Cliente values 
	(null, 'Carrefour Comércio & Indústria Ltda', '1234567891125'),
    (null, 'Extra Hipermercado', '9876543219854'),
    (null, 'Pão de Açucar', '9875485418895');
    
insert into Usuario values
	(null, 'CarrefourADM', '1', 'carrefourltda', '12345678'),
    (null, 'ExtraADM', '2', 'extraltda', '87654321'),
    (null, 'PaoADM', '3', 'paoltda', '96385247');
    
insert into Filiais values
	(null, '1', 'Carrefour Paulista'),
    (null, '1', 'Carrefour Morumbi'),
    (null, '2', 'Extra Carrão'),
    (null, '2', 'Extra Tatuapé'),
    (null, '3', 'Pão Brigadeiro'),
    (null, '3', 'Pão Liberdade');
    

insert into Bancadas values 
	(null, 'BCD001', '1'),
    (null, 'BCD002', '2'),
    (null, 'BCD003', '2'),
    (null, 'BCD004', '3'),
    (null, 'BCD005', '3'),
    (null, 'BCD006', '3'),
    (null, 'BCD007', '4'),
    (null, 'BCD008', '4'),
    (null, 'BCD009', '5'),
    (null, 'BCD010', '6'),
    (null, 'BCD011', '6');

insert into Zonas values
	(null, 'Zona1', '1'),
    (null, 'Zona2', '1'),
    (null, 'Zona3', '1'),
    (null, 'Zona1', '2'),
    (null, 'Zona2', '2'),
    (null, 'Zona3', '2'),
    (null, 'Zona1', '3'),
    (null, 'Zona2', '3'),
    (null, 'Zona3', '3'),
    (null, 'Zona1', '4'),
    (null, 'Zona2', '4'),
    (null, 'Zona3', '4'),
    (null, 'Zona1', '5'),
    (null, 'Zona2', '5'),
    (null, 'Zona3', '5'),
    (null, 'Zona1', '6'),
    (null, 'Zona2', '6'),
    (null, 'Zona3', '6'),
    (null, 'Zona1', '7'),
    (null, 'Zona2', '7'),
    (null, 'Zona3', '7'),
    (null, 'Zona1', '8'),
    (null, 'Zona2', '8'),
    (null, 'Zona3', '8'),
    (null, 'Zona1', '9'),
    (null, 'Zona2', '9'),
    (null, 'Zona3', '9'),
    (null, 'Zona1', '10'),
    (null, 'Zona2', '10'),
    (null, 'Zona3', '10'),
    (null, 'Zona1', '11'),
    (null, 'Zona2', '11'),
    (null, 'Zona3', '11');
    
    select * from zonas, bancadas,filiais where fkBancada = idBancadas and fkFiliais = idFiliais;
    
 
        
	insert into Leitura (temperatura, fkZona) values
		('00.5', '1'),
        ('05.5', '2'),
        ('11.5', '3');

	insert into Leitura (temperatura, fkZona) values
        ('00.9', '4'),
        ('06.5', '5'),
        ('13.5', '6'),
        
        ('00.7', '7'),
        ('07.2', '8'),
        ('14.2', '9'),
        
        ('00.8', '10'),
        ('09.4', '11'),
        ('14.5', '12'),
        
        ('00.1', '13'),
        ('08.0', '14'),
        ('13.3', '15'),
        
        ('00.5', '16'),
        ('05.5', '17'),
        ('11.5', '18'),
        
        ('00.2', '19'),
        ('08.0', '20'),
        ('14.0', '21'),
        
        ('00.1', '22'),
        ('06.2', '23'),
        ('12.2', '24'),
        
        ('00.7', '25'),
        ('07.2', '26'),
        ('15.0', '27'),
        
        ('01.0', '28'),
        ('08.0', '29'),
        ('14.0', '30'),

        ('00.2', '31'),
        ('08.5', '32'),
        ('13.3', '33');
        
-- Select geral
select * from cliente, filiais, bancadas, zonas, leitura where fkZona = idZona and fkBancada = idBancadas and fkFiliais = idFiliais and fkCliente = idCliente and idCliente = 1;
-- Select informações bancada,zona e leitura
select * from bancadas,zonas,leitura where idZona=fkZona and idBancadas=fkBancada;
-- Select zonas e leitura
select nome,leitura.* from zonas,leitura where fkZona=idZona;
 
-- Select com as médias de cada zona 
select fkZona, truncate(avg(temperatura),1) from Leitura group by fkZona;
    
    
        
        
