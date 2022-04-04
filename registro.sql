insert  into clientes(nombre, apellido, estado_civil ,cuit,direccion,telefono,email,comentarios)
values ('Mariano','Diaz','Soltero','23458462','Medrano 234','1152752047','MarianoD@hmail.com','Okey'); 
insert  into clientes(nombre, apellido, estado_civil ,cuit,direccion,telefono,email,comentarios)
values ('Luciana','Repollo','Casada','225352162','Murguiondo 2152','1132742077','Lu@hotmail.com','Gracias'); 
insert  into clientes(nombre, apellido, estado_civil ,cuit,direccion,telefono,email,comentarios)
values ('Florencia','Moretti','Poliamor','23118462','inclan 1763','1121753047','Flor@gmail.com','Bueno'); 
insert  into clientes(nombre, apellido, estado_civil ,cuit,direccion,telefono,email,comentarios)
values ('Melanie','Recaño','Relacion abierta','26643262','Curapaligue 1234','1122753147','MelR@gmail.com','Nos vemos'); 
insert  into clientes(nombre, apellido, estado_civil ,cuit,direccion,telefono,email,comentarios)
values ('Gabriela','Manchini','Soltera','21424422','Av.diaz.velez3424','1152112047','GanrielaD@gmail.com','Me voy');

insert  into facturas(letra, numero, fecha,monto,forma_de_pago,id_cliente)
values ('A','133646433','2021-12-08','253.00','Tarjeta','4');
insert  into facturas(letra, numero, fecha,monto,forma_de_pago,id_cliente)
values ('B','124442433','2019-09-07','15.300','Efectivo','1');
insert  into facturas(letra, numero, fecha,monto,forma_de_pago,id_cliente)
values ('B','133636433','2021-12-08','12.000','Debito','2');
insert  into facturas(letra, numero, fecha,monto,forma_de_pago,id_cliente)
values ('A','133236433','2016-11-07','8.300','Cheque','2');
insert  into facturas(letra, numero, fecha,monto,forma_de_pago,id_cliente)
values ('C','122346433','2018-05-02','21.200','Efectivo','5');
insert into articulos(descripcion, rubro, costo, precio, stock, stock_maximo, stock_minimo)
values ('Pepsi','Bebidas','180','180','8','10','4');
insert into articulos(descripcion, rubro, costo, precio, stock, stock_maximo, stock_minimo)
values ('Serenisima','Lacteos','180','180','4','9','2');
insert into articulos(descripcion, rubro, costo, precio, stock, stock_maximo, stock_minimo)
values ('Escoba','Limpieza','250','250','5','8','3');
insert into articulos(descripcion, rubro, costo, precio, stock, stock_maximo, stock_minimo)
values ('Pan duro','Panaderia','450','450','9','11','7');
insert into articulos(descripcion, rubro, costo, precio, stock, stock_maximo, stock_minimo)
values ('Chinchulin','Carniceria','300','300','3','9','2');
insert into detalles(id_factura,id_articulo,cantidad, precio_unitario)
values('2','3','4','180.232');
insert into detalles(id_factura,id_articulo,cantidad, precio_unitario)
values('3','4','3','180.121');
insert into detalles(id_factura,id_articulo,cantidad, precio_unitario)
values('3','1','2','250.123');
insert into detalles(id_factura,id_articulo,cantidad, precio_unitario)
values('4','3','6','450.321');
insert into detalles(id_factura,id_articulo,cantidad, precio_unitario)
values('3','2','1','300.322');
select *from clientes;
select *from articulos;
select *from detalles;
select *from facturas;

show tables;
select from negocio;