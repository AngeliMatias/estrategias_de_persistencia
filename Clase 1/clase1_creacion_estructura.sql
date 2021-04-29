CREATE persistencia_clase1;
-- Selección de la base de datos
USE persistencia_clase1;
-- Creación de las tablas
CREATE TABLE departamentos(
    codDpto VARCHAR(4) NOT NULL,
    nombreDepto VARCHAR(20),
    ciudad VARCHAR(15),
    codDirector VARCHAR(12),
    PRIMARY KEY(codDpto)
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