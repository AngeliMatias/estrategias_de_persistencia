CREATE DATABASE persistencia_clase2;

-- Selección de la base de datos
USE persistencia_clase2;

-- Creación de las tablas
CREATE TABLE Fabricantes(
    codigo INT NOT NULL,
    nombre NVARCHAR(100),
    PRIMARY KEY(codigo)
);

CREATE TABLE Articulos(
    codigo INT NOT NULL,
    nombre NVARCHAR(100),
    precio INT,
    fabricante INT,
    PRIMARY KEY(codigo),
    FOREIGN KEY(fabricante) REFERENCES Fabricantes(codigo)
);
