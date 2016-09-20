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
	contrato DATE NOT NULL,
	jefe INT NOT NULL,
	cuota DOUBLE NOT NULL,
	ventas DOUBLE NOT NULL
);

INSERT INTO empleados VALUES (101,"Andres Landri",45,12,"representante",'1995-06-12',104,6000.00,6100.00),
(102,"Alberto Juarez",48,21,"representante",'1995-06-12',108,7000.00,9500.00),
(103,"Juan Rovira",29,12,"representante",'2004-10-03',104,5500.00,5800.00),
(104,"José Gonzalez",40,12,"dir ventas",'1990-06-15',106,4000.00,2900.00),
(105,"Vicente Mari",35,13,"representante",'1992-04-12',104,7000.00,7450.00),
(106,"Luis Antonio",52,11,"dir general",'1990-06-14',null,5500.00,5990.00),
(107,"Germán Gutierrez",32,22,"representante",'1993-09-14',108,6000.00,3750.00),
(108,"Elsa Bustillo",31,21,"dir ventas",'1996-10-12',106,7000.00,7240.00),
(109,"Marta López",30,11,"representante",'2003-10-12',106,6000.00,7800.00),
(110,"Víctor Stangen",45,null,"representante",'2005-11-13',104,null,15200.00);