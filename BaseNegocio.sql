-- Base datos negocio para toda la especialización web.
select version();
drop database if exists negocio;
create database negocio;
use negocio;
drop table if exists detalles;
drop table if exists facturas;
drop table if exists clientes;
drop table if exists articulos;
create table clientes(
    id int AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    estado_civil enum('SOLTERO','CASADO','VIUDO','DIVORCIADO','POLIAMOR','RELACION ABIERTA','SOLTERA','CASADA'),
    cuit char(11),
    direccion varchar(100),
    telefono varchar(20),
    email varchar(40),
    comentarios varchar(255)
);

alter table clientes
    add constraint U_clientes_cuit
    unique(cuit);

create table facturas(
    id int AUTO_INCREMENT PRIMARY KEY,
    letra char(1) not null,
    numero int not null,
    fecha date,
    monto double,
    forma_de_pago enum('EFECTIVO','TARJETA','DEBITO','CHEQUE'),
    id_cliente int not null
);

alter table facturas 
    add constraint CK_facturas_monto
    check (monto>=0);

alter table facturas
    add constraint U_facturas_letra_numero
    unique(letra,numero);

alter table facturas
    add constraint FK_facturas_clientes
    foreign key(id_cliente)
    references clientes(id);

create table articulos(
    id int auto_increment primary key,
    descripcion varchar(50) not null,
    rubro enum('LACTEOS','PANADERIA','LIMPIEZA','PERSONAL','FIAMBRES','CARNICERIA','BEBIDAS'),
    costo DOUBLE,
    precio DOUBLE,
    stock int,
    stock_minimo int,
    stock_maximo int
);

alter table articulos
    add constraint CK_articulos_costo
    check(costo>=0);

alter table articulos
    add constraint CK_articulos_precio
    check(precio>=costo);

alter table articulos
    add constraint CK_articulos_stock
    check(stock>=0);

alter table articulos
    add constraint CK_articulos_stock_minimo
    check(stock_minimo>=0);

alter table articulos
    add constraint CK_articulos_stock_maximo
    check(stock_maximo>=stock_minimo);

create table detalles(
    id int AUTO_INCREMENT PRIMARY KEY,
    id_factura int not null,
    id_articulo int not null,
    cantidad int not null,
    precio_unitario double
);

alter table detalles
    add constraint FK_detalles_facturas
    foreign key(id_factura)
    references facturas(id);

alter table detalles
    add constraint FK_detalles_articulos
    foreign key(id_articulo)
    references articulos(id);

alter table detalles
    add constraint U_detalles_facturas_articulos
    unique (id_factura,id_articulo);

alter table detalles
    add constraint CK_detalles_cantidad
    check (cantidad>=0);

alter table detalles
    add constraint CK_detalles_precio_unitario
    check (precio_unitario>=0);

show tables;




