use negocio;
drop DATABASE if exists negocio;
create DATABASE negocio;
call SP_procedures;
call SP_vistas;

-- Parametros de entrada
drop procedure if exists test2;
delimiter //
create procedure SP_test2(in descripcion varchar(50))
	begin
		SELECT concat('Medialunas ',descripcion);
	end;
// delimiter ;
call SP_test2('Cocacola');

describe articulos;

drop procedure if exists SP_articulos_insert;
delimiter //
create procedure SP_articulos_insert(in Pdescripcion varchar(50),Prubro varchar(30), Pcosto decimal(13,2),
		Pprecio decimal(13,2), Pstock varchar(40), Pstock_minimo varchar(40), Pstock_maximo varchar(40))
	begin
		insert into articulos (descripcion,rubro,costo,precio,stock,stock_minimo,stock_maximo) 
			values
		(Pdescripcion, Prubro, Pcosto, Pprecio, Pstock, Pstock_minimo, Pstock_maximo);
    end;
// delimiter ;
 call SP_articulos_insert('Cocacola','Bebidas','120','130','3','4','6');
 select * from articulos;
 
 drop procedure if exists SP_articulos_remove;
 delimiter //

 create procedure SP_articulos_remove(in Pid int)
 begin
	delete from articulos where id=Pid;
 end;
 // delimiter ;
 call SP_articulos_remove(1);
 select * from articulos;
 
 drop procedure if exists SP_articulos_update;
 
 delimiter //

 create procedure SP_articulos_update(in Pid int, Pdescripcion varchar(50), Prubro varchar(30), Pcosto decimal(13,2),
		Pprecio decimal(13,2), Pstock varchar(40), Pstock_minimo varchar(40), Pstock_maximo varchar(40))
begin
	update articulos set descripcion=Pdescripcion, rubro=Prubro, costo=Pcosto, precio=Pprecio,
			stock=Pstock, stock_minimo=Pstock_minimo, stock_maximo=Pstock_maximo
            where id=Pid;
end;
 // delimiter ;

 select * from articulos;
 call SP_articulos_update(3,'Escoba','Limpieza','250','260','6','4','7');