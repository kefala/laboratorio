create database laboratorio;
use laboratorio;
show tables;

CREATE TABLE clientes (
	numcli INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	representante INT NOT NULL,
	limitecredito FLOAT NULL
);

INSERT INTO clientes VALUES 
(1001, "Juan Alberto Paz", 106, 1300.00),
(1002,"Alvaro Sanz",101,1300.00),
(1003,"Jorge Lorens",105,1000.00),
(1004, "Antonio Canales", 101, 900.00),
(1005,"Juan Suárez",102,1300.00),
(1007,"Julián López",110,700.00),
(1008,"Julia Miguez",109,1100.00),
(1010,"Alberto Romero",103, 500.00),
(1011,"Carlos García",103,1000.00),
(1012,"Marta Alvarez",108,1000.00),
(1013,"Ana Marat",104,400.00),
(1014,"Cristina Caceres", 102,400.00),
(1015,"Antonio Guasch",101,400.00),
(1016,"Oscar Tarragos",106,700.00),
(1017,"Juan Alvarez",108,1200.00),
(1019,"Caludia Buena",109,500.00),
(1020,"Jose Marmol",102,1000.00),
(1021,"Vicente Tur",103,900.00),
(1022,"Juan Bottini",105,600.00),
(1023,"Pedro Soto",102,800.00),
(1024,"Juan Zapata",107,800.00);


CREATE TABLE empleados (
	numemp INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	edad INT NOT NULL,
	oficina INT NOT NULL,
	cargo VARCHAR(50) NOT NULL,
	contrato DATETIME NOT NULL,
	jefe INT NOT NULL,
	cuota DOUBLE NOT NULL,
	ventas DOUBLE NOT NULL
);

INSERT INTO empleados VALUES (101,"Andres Landri",45,12,"representante",12/06/95,104,6000.00,6100.00);