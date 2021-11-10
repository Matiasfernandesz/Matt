insert  into bicicleta(stock, fecha_fabricacion, dimencion, precio ,tipo) 
values('Hay stock', '2016-11-02', '27.5', '90', 'Venzo');

insert  into bicicleta(stock, fecha_fabricacion, dimencion, precio ,tipo) 
values('Hay stock', '2017-08-05', '29', '180', 'Scott');

insert  into bicicleta(stock, fecha_fabricacion, dimencion, precio ,tipo) 
values('Hay stock', '2015-07-06', '27.5', '60', 'Merida');

insert  into bicicleta(stock, fecha_fabricacion, dimencion, precio ,tipo) 
values('Hay stock', '2018-09-06', '29', '120', 'Trek');

insert  into bicicleta(stock, fecha_fabricacion, dimencion, precio ,tipo) 
values('Hay stock', '2019-02-03', '29', '140', 'Bmc');

insert into cliente(calle,altura,telefono)
values('Urquiza','2434','1134587463');

insert into cliente(calle,altura,telefono)
values('Medrano','174','1154575421');

insert into cliente(calle,altura,telefono)
values('Parana','278','1143575446');

insert into cliente(calle,altura,telefono)
values('Bonpland','1116','1143474462');

insert into proveedor(nombre,correo)
values('Emilio', 'emilio24@gmail.com');

insert into proveedor(nombre,correo)
values('Emilio', 'emilio24@gmail.com');

insert into proveedor(nombre,correo)
values('Scott', 'ventas@scott.com');

insert into proveedor(nombre,correo)
values('Venzo', 'ventas@venzo.com');

insert into factura(total_pagar,monto,fecha)
values('0','90','2016-11-05');

insert into factura(total_pagar,monto,fecha)
values('0','180','2017-08-09');

insert into factura(total_pagar,monto,fecha)
values('0','60','2015-12-07');

insert into factura(total_pagar,monto,fecha)
values('0','120','2018-13-02');

insert into factura(total_pagar,monto,fecha)
values('0','140','2019-14-07');


use bicicleteria;
select * from cliente;
select *from bicicleta;
select *from proveedor;
select *from factura;