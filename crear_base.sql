#CREAR UNA BASE DE DATOS
create database if not exists byron;

#CREAR UNA TABLA DENTRO DE UNA BASE DE DATOS
use  byron;
create table if not exists mes(
id_mes int(11) auto_increment ,
nombre_mes varchar(20),
primary key(id_mes)
);

#INGRESAR VALORES A LA TABLA CREADA
insert into byron.mes values(id_mes,'Enero');
insert into byron.mes values(id_mes,'Febrero') ;
insert into byron.mes values(id_mes,'Marzo');
insert into byron.mes values(id_mes,'Abril');
insert into byron.mes values(id_mes,'Mayo');
insert into byron.mes values(id_mes,'Junio');

#CREAR UNA SEGUNDA TABLA QUE ALMACENE EL DINERO GASTADO POR MES
create table if not exists gastos(
id_mes int(11) auto_increment ,
gastos_mes float(15,2),
primary key(id_mes)
);

#INGRESAR VALORES A LA TABLA CREADA GASTOS
insert into byron.gastos values(id_mes,500);
insert into byron.gastos values(id_mes,200) ;
insert into byron.gastos values(id_mes,300);
insert into byron.gastos values(id_mes,400);
insert into byron.gastos values(id_mes,700);
insert into byron.gastos values(id_mes,1000);

#VISUALIZAR TABLA MES
select*from byron.mes;

#VISUALIZAR TABLA GASTOS
select*from byron.gastos;
select*from gastos where gastos_mes>=600;

#JOIN ENTRE LAS DOS TABLAS CREADAS CON LA LLAVE ID_MES, ordenado descendentemente por gastos_mes
Select m.nombre_mes, g.gastos_mes from byron.mes m 
inner join  byron.gastos g on (m.id_mes=g.id_mes) 
order by gastos_mes DESC;
