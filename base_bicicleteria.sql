drop database if exists bicicleteria;
create database bicicleteria;
use bicicleteria;
drop table if exists bicicleta;
drop table if exists cliente;
drop table if exists proveedor;
drop table if exists factura;
drop table if exists bicicleta_factura;
drop table if exists bicicleta_proveedor;




create table bicicleta(
id int primary key auto_increment,
stock varchar(45) not null,
fecha_fabricacion date not null,
dimencion varchar(10) not null,
precio decimal(13, 2) not null check(precio > 0),
tipo enum( 'VENZO','SCOTT','TREK','MERIDA','BMC')

);

create table cliente(
id int primary key auto_increment,
calle varchar(40),
altura int,
telefono varchar(20)

);
create table proveedor(
id int primary key auto_increment,
nombre varchar(75)not null unique,
correo varchar(50)not null

);
create table factura(
id int primary key auto_increment,
total_pagar decimal(13,2)not null check(total_pagar>=0),
monto int,
fecha date,
id_cliente int,
foreign key(id_cliente) references cliente(id)
);

create table bicicleta_factura(
id int auto_increment,
id_bicicleta int not null,
id_factura int not null,
primary key(id),
foreign key(id_bicicleta) references bicicleta(id),
foreign key(id_factura) references factura(id)

);

create table bicicleta_proveedor(
id int auto_increment,
id_bicicleta int not null,
id_proveedor int not null,
primary key(id),
foreign key(id_bicicleta) references bicicleta(id),
foreign key(id_proveedor) references proveedor(id)
);
















