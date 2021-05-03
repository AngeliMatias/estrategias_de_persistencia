CREATE DATABASE persistencia_clase1;

-- Selección de la base de datos
USE persistencia_clase1;

-- Creación de las tablas
CREATE TABLE Departamentos(
    codDpto VARCHAR(4) NOT NULL,
    nombreDepto VARCHAR(20),
    ciudad VARCHAR(15),
    codDirector VARCHAR(12),
    PRIMARY KEY(codDpto)
);

CREATE TABLE Empleados(
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
    PRIMARY KEY(ndiEMP),
    FOREIGN KEY(codDepto) REFERENCES Departamentos(codDpto)
);

-- Carga de datos
insert into Departamentos(codDpto, nombreDepto, ciudad, codDirector)
VALUES ('adm','ADMINISTRACION','hurlingham','1'),
       ('vtas','VENTAS','hurlingham','1'),
       ('ger','GERENCIA','moron','2'),
       ('cont','CONTADURIA','ituzaingo','3'),
       ('via','VIAJES','ezeiza','4');

insert into Empleados(ndiEMP, nomEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto)
VALUES  ('6','Juana Jaimiericna','m','1981-06-24','2012-05-01',800000,0,'contador','3','cont'),
        ('9','Luciana Larinomio','m','1991-08-13','2009-03-02',800000,0,'contador','3','cont'),
        ('5','Mario Martinez','h','1995-12-28','2019-05-14',35000,25000,'vendedor','1','vtas'),
        ('1','Pablo Palacios','h','1960-10-23','2008-01-09',240000,0,'ceo','1','adm'),
        ('2','Juan Jimenez','h','1970-05-18','2008-01-09',150000,50000,'ger','1','ger'),
        ('3','Rosa Reina','m','1980-02-01','2010-03-20',150000,50000,'jefe','3','cont'),
        ('8','Coco Camina','m','1997-02-01','2010-03-23',25000,50000,'vendedor','1','vtas'),
        ('4','Felipe Frituras','h','1981-06-24','2013-07-11',450000,10000,'contador','3','cont'),
        ('7','Gabriel Gutierrez','h','2001-07-22','2013-08-21',750000,0,'contador','3','cont');
