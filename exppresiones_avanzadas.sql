#IF
select nombre_empleado,
if (fecha_ingreso < '2018-12-31', concat(id_empleado, '018'),
	if (fecha_ingreso < '2019-12-31', concat(id_empleado, '019'),
		if (fecha_ingreso < '2019-12-31', concat(id_empleado, '020'),
			concat(id_empleado, '021')
            )
		)
	)
as nuevo_codigo
from base_uno.empleado;


#IFNULL
select nombre_empleado,
ifnull(telefono,'no tiene celular') as numero_contacto
from base_uno.empleado;
