-- Selección de la base de datos
USE persistencia_clase1;

-- 1. Obtener los datos completos de los empleados.
SELECT
    Empleados.nomEmp AS nombre_empleado,
    Empleados.sexEmp AS sexo,
    Empleados.fecNac AS fecha_nacimiento,
    Empleados.fecIncorporacion AS fecha_incorporacion,
    Empleados.codDepto AS departamento,
    Empleados.cargoE AS cargo,
    Empleados.jefeID AS jefe,
    Empleados.salEmp AS salario,
    Empleados.comisionE AS comision
FROM
    Empleados; 
-- 2. Listar el nombre de los departamentos.
SELECT
    Departamentos.nombreDepto AS nombre_departamento
FROM
    Departamentos; 
-- 3. Obtener el nombre y cargo de todos los empleados, ordenado por salario
SELECT
    nomEmp AS nombre_empleado,
    cargoE AS cargo,
    salEmp AS salario
FROM
    Empleados
ORDER BY
    salEmp;

-- 4. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
SELECT
    Empleados.nomEmp AS nombre_empleado,
    Empleados.salEmp AS salario,
    Empleados.comisionE AS comision
FROM
    Empleados
WHERE
    comisionE > salEmp;

-- 5. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
SELECT
    Empleados.nomEmp AS nombre_empleado,
    Empleados.salEmp AS salario,
    Empleados.comisionE AS comision
FROM
    Empleados
WHERE
    comisionE <= salEmp * 0.3;

-- 6. Muestra los empleados cuyo nombre empiece entre las letras J y Z (rango). Liste estos empleados
-- y su cargo por orden alfabético.
SELECT
    Empleados.nomEmp AS nombre_empleado,
    Empleados.cargoE AS cargo
FROM
    Empleados
WHERE
    nomEmp BETWEEN 'J'
    AND 'Z'
ORDER BY
    nomEmp;

-- 7. Hallar los empleados cuyo nombre no contiene la cadena “MA”
SELECT
    Empleados.nomEmp AS nombre_empleado
FROM
    Empleados
WHERE
    nomEmp NOT LIKE '%MA%';

-- 8. Listar los datos de los empleados cuyo nombre inicia por la letra ‘M’, su salario es mayor a
-- $800.000 o reciben comisión y trabajan para el departamento de ‘VENTAS’
SELECT
    Empleados.nomEmp AS nombre_empleado,
    Empleados.salEmp AS salario,
    Empleados.comisionE AS comision,
    Departamentos.nombreDepto AS nombre_departamento
FROM
    Empleados,
    Departamentos
WHERE
    nomEmp LIKE 'A%'
    AND salEmp > 800000
    OR comisionE > 0
    AND nombreDepto = 'VENTAS';

-- 9. Mostrar el salario más alto de la empresa.
SELECT
    Empleados.nomEmp AS nombre_empleado,
    MAX(Empleados.salEmp) AS salario_mas_alto
FROM
    Empleados;

-- 10. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
SELECT
    MAX(Empleados.salEmp) AS salario_mas_alto,
    MIN(Empleados.salEmp) AS salario_mas_bajo,
    MAX(Empleados.salEmp) - MIN(Empleados.salEmp) AS diferencia
FROM
    Empleados;

-- 11. Mostrar el número de empleados de sexo femenino y de sexo masculino, por departamento.
SELECT 
    nomEmp as nombre,
    codDepto as departamento,
    sexEmp as sexo, 
    COUNT(*) as cantidad
FROM Empleados, Departamentos
WHERE Empleados.codDepto = Departamentos.codDpto
GROUP BY Empleados.codDepto, sexEmp;
-- 12. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de
-- esos departamentos.
SELECT Departamentos.nombreDepto as departamento, COUNT(*) as cantidad
FROM Departamentos, Empleados
WHERE Departamentos.codDpto = Empleados.codDepto
GROUP BY nombreDepto
HAVING COUNT(*) > 3;
-- 13. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. 
-- Solo los que tengan más de dos empleados (2 incluido).
SELECT Empleados.jefeID as ID_jefe, Empleados.nomEmp as nombre_jefe
FROM Empleados, Departamentos
WHERE Empleados.ndiEMP = Empleados.jefeID
GROUP BY Empleados.jefeID
HAVING COUNT(*) >= 2;
-- 14. Hallar los departamentos que no tienen empleados
SELECT Departamentos.nombreDepto as departamento, COUNT(*) as cantidad
FROM Departamentos, Empleados
WHERE Departamentos.codDpto = Empleados.codDepto
GROUP BY nombreDepto
HAVING COUNT(*) = 0;
-- 15. Mostrar el nombre del departamento cuya suma de salarios sea la más alta, indicando el valor 
-- de la suma
SELECT Departamentos.nombreDepto as nombre, SUM(Empleados.salEmp) as total_salario
FROM Departamentos, Empleados
WHERE Departamentos.codDpto = Empleados.codDepto
GROUP BY Departamentos.nombreDepto
ORDER BY total_salario DESC
LIMIT 1;