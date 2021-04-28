-- 1. Obtener los datos completos de los empleados.
SELECT `empleados`.*
FROM `empleados`;
-- 2. Listar el nombre de los departamentos.
SELECT `departamentos`.`nombreDepto`
FROM `departamentos`;
-- 3. Obtener el nombre y cargo de todos los empleados, ordenado por salario
SELECT `nomEmp`, `cargoE` 
FROM `empleados` 
ORDER BY `salEmp`;
-- 4. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
SELECT `empleados`.*
FROM `empleados`
WHERE `comisionE` > `salEmp`;
-- 5. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
SELECT `empleados`.*
FROM `empleados`
WHERE `comisionE` <= `salEmp`*0.3;
-- 6. Muestra los empleados cuyo nombre empiece entre las letras J y Z (rango). Liste estos empleados
-- y su cargo por orden alfabético.
SELECT `empleados`.`nomEmp`, `empleados`.`cargoE`
FROM `empleados`
WHERE `nomEmp` BETWEEN 'J' AND 'Z'
ORDER BY `nomEmp`;
-- 7. Hallar los empleados cuyo nombre no contiene la cadena “MA”
SELECT `empleados`.*
FROM `empleados`
WHERE `nomEmp` NOT LIKE '%MA%';
-- 8. Listar los datos de los empleados cuyo nombre inicia por la letra ‘M’, su salario es mayor a
-- $800.000 o reciben comisión y trabajan para el departamento de ‘VENTAS’
SELECT `empleados`.*
FROM `empleados`
WHERE `nomEmp` LIKE 'A%' OR `salEmp` > 800000 OR `comisionE` > 0 AND nombreDepto
INNER JOIN `departamentos` ON `empleados`.`codDepto` = `departamentos`.`codDpto`;

-- 9. Mostrar el salario más alto de la empresa.

-- 10. Hallar el salario más alto, el más bajo y la diferencia entre ellos.

-- 11. Mostrar el número de empleados de sexo femenino y de sexo masculino, por departamento.

-- 12. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de
-- esos departamentos.

-- 13. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. 
-- Solo los que tengan más de dos empleados (2 incluido).

-- 14. Hallar los departamentos que no tienen empleados

-- 15. Mostrar el nombre del departamento cuya suma de salarios sea la más alta, indicando el valor 
-- de la suma
