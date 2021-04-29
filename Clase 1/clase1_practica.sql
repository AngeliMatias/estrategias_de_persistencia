CREATE persistencia_clase1;
-- Selección de la base de datos
USE persistencia_clase1;
-- Creación de las tablas
CREATE TABLE departamentos(
    codDpto VARCHAR(4) NOT NULL,
    nombreDepto VARCHAR(20),
    ciudad VARCHAR(15),
    codDirector VARCHAR(12),
    PRIMARY KEY(`codDpto`)
); CREATE TABLE empleados(
    ndiEMP VARCHAR(12) NOT NULL,
    nomEmp VARCHAR(30),
    sexEmp CHAR(1),
    fecNac DATE,
    fecIncorporacion DATE,
    salEmp FLOAT,
    comisionE FLOAT,
    cargoE VARCHAR(15),
    jefeID VARCHAR(12),
    codDepto VARCHAR(4),
    PRIMARY KEY(`ndiEMP`),
    FOREIGN KEY(codDepto) REFERENCES departamentos(codDpto)
);
-- 1. Obtener los datos completos de los empleados.
SELECT `empleados`.`nomEmp` AS nombre_empleado, `empleados`.`sexEmp` AS sexo, `empleados`.`fecNac` AS fecha_nacimiento,
       `empleados`.`fecIncorporacion` AS fecha_incorporacion, `empleados`.`codDepto` AS departamento ,
       `empleados`.`cargoE` AS cargo, `empleados`.`jefeId` AS jefe, `empleados`.`salEmp` AS salario, `empleados`.`comisionE` AS comision,
FROM `empleados`;
-- 2. Listar el nombre de los departamentos.
SELECT `departamentos`.`nombreDepto` AS nombre_departamento
FROM `departamentos`;
-- 3. Obtener el nombre y cargo de todos los empleados, ordenado por salario
SELECT `nomEmp` AS nombre_empleado, `cargoE` AS cargo
FROM `empleados` 
ORDER BY `salEmp`;
-- 4. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
SELECT `empleados`.`nomEmp` AS nombre_empleado, `empleados`.`salEmp` AS salario, `empleados`.`comisionE` AS comision
FROM `empleados`
WHERE `comisionE` > `salEmp`;
-- 5. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
SELECT `empleados`.`nomEmp` AS nombre_empleado, `empleados`.`salEmp` AS salario, `empleados`.`comisionE` AS comision
FROM `empleados`
WHERE `comisionE` <= `salEmp`*0.3;
-- 6. Muestra los empleados cuyo nombre empiece entre las letras J y Z (rango). Liste estos empleados
-- y su cargo por orden alfabético.
SELECT `empleados`.`nomEmp` AS nombre_empleado, `empleados`.`cargoE` AS cargo
FROM `empleados`
WHERE `nomEmp` BETWEEN 'J' AND 'Z'
ORDER BY `nomEmp`;
-- 7. Hallar los empleados cuyo nombre no contiene la cadena “MA”
SELECT `empleados`.`nomEmp` AS nombre_empleado
FROM `empleados`
WHERE `nomEmp` NOT LIKE '%MA%';
-- 8. Listar los datos de los empleados cuyo nombre inicia por la letra ‘M’, su salario es mayor a
-- $800.000 o reciben comisión y trabajan para el departamento de ‘VENTAS’
SELECT `empleados`.`nomEmp` AS nombre_empleado, `empleados`.`salEmp` AS salario, `empleados`.`comisionE` AS comision, 
       `departamentos`.`nombreDepto` AS nombre_departamento
FROM `empleados`, `departamentos`
WHERE `nomEmp` LIKE 'A%' 
AND `salEmp` > 800000 OR `comisionE` > 0 
AND nombreDepto = 'VENTAS';
-- 9. Mostrar el salario más alto de la empresa.
select `empleados`.`nomEmp` AS nombre_empleado, MAX(`empleados`.`salEmp`) AS salario_mas_alto
FROM `empleados`;
-- 10. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
select MAX(`empleados`.`salEmp`) AS salario_mas_alto, 
       MIN(`empleados`.`salEmp`) AS salario_mas_bajo, 
       MAX(`empleados`.`salEmp`) - MIN(`empleados`.`salEmp`) AS diferencia
FROM `empleados`;
-- 11. Mostrar el número de empleados de sexo femenino y de sexo masculino, por departamento.

-- 12. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de
-- esos departamentos.

-- 13. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. 
-- Solo los que tengan más de dos empleados (2 incluido).

-- 14. Hallar los departamentos que no tienen empleados

-- 15. Mostrar el nombre del departamento cuya suma de salarios sea la más alta, indicando el valor 
-- de la suma
