CREATE DATABASE persistencia_ej3_clase2;

-- Selección de la base de datos
USE persistencia_ej3_clase2;

-- Creación de las tablas
CREATE TABLE Almacen(
    codigo INT NOT NULL,
    lugar NVARCHAR(100),
    capacidad INT,
    PRIMARY KEY(codigo)
);

CREATE TABLE Cajas(
    numReferencia CHAR(5) NOT NULL,
    contenido NVARCHAR(100),
    valor INT,
    almacen INT,
    PRIMARY KEY(numReferencia),
    FOREIGN KEY(almacen) REFERENCES Almacen(codigo)
);
