CREATE DATABASE persistencia_ej2_clase2;

-- Selección de la base de datos
USE persistencia_ej2_clase2;

-- Creación de las tablas
CREATE TABLE Departamentos(
    codigo INT NOT NULL,
    nombre NVARCHAR(100),
    presupuesto INT,
    PRIMARY KEY(codigo)
);

CREATE TABLE Empleados(
    dni VARCHAR(8) NOT NULL,
    nombre NVARCHAR(100),
    apellido NVARCHAR(255),
    departamento INT,
    PRIMARY KEY(dni),
    FOREIGN KEY(departamento) REFERENCES Departamentos(codigo)
);
