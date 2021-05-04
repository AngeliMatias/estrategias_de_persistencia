USE persistencia_ej3_clase2;

-- 8. Obtener todos los datos de los empleados que se apellidan Lopez y los 
-- que se apellidan Perez. 
SELECT Empleados.*
FROM Empleados
WHERE Empleados.apellido = 'Lopez' OR Empleados.apellido = 'Perez';
-- 9. Obtener todos los datos de los empleados que trabajan para el 
-- departamento 37 y para el departamento 77. 
SELECT Empleados.*
FROM Empleados
WHERE Empleados.departamento = 37 OR Empleados.departamento = 77; 
-- 10. Obtener un listado completo de empleados, incluyendo el nombre 
-- y apellidos del empleado junto al nombre y presupuesto de su departamento.
SELECT Empleados.nombre, Empleados.apellido, Departamentos.presupuesto
FROM Empleados, Departamentos;
-- 11. Obtener los nombres (unicamente los nombres) de los departamentos 
-- que tienen mas de dos empleados. 
SELECT Departamentos.nombre as departamento, COUNT(*) as cantidad
FROM Departamentos, Empleados
WHERE Departamentos.codigo = Empleados.departamento
GROUP BY nombre
HAVING COUNT(*) > 2;
-- 12. Añadir un nuevo departamento: ‘Calidad’, con presupuesto de 40.000 $
-- y código. Añadir un empleado vinculado al departamento recien creado:
--  Esther Vazquez, DNI: 89267109 
INSERT INTO Departamentos(codigo, nombre, presupuesto)
VALUES (332, 'Calidad', 40000);

INSERT INTO Empleados(dni, nombre, apellido, departamento)
VALUES (89267109, 'Esther', 'Vazquez', 332);
-- 13. Aplicar un recorte presupuestario del 10 % a todos los departamentos. 
UPDATE Departamentos
SET presupuesto = (presupuesto * 0.9);